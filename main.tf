locals {
  default_parameters = {
    bucket_name_override      = ""
    force_destroy             = false
    tags                      = {}
    s3_bucket_kms_key_id      = null
    sse_algorithm             = "aws:kms"
    lifecycle_expiration_days = null
  }
  default_buckets = {
     gatus  = local.default_parameters
     loki   = local.default_parameters
     thanos = local.default_parameters
     velero = local.default_parameters
  }
  all_buckets = merge(local.default_buckets, var.bucket_specs)
}

module "bucket" {
  for_each                  = local.all_buckets
  source                    = "git::git@github.com:CMS-Enterprise/batcave-tf-buckets.git//.?ref=0.4.0"
  s3_bucket_names           = [coalesce(each.value.bucket_name_override, "${var.cluster_name}-${each.key}")]
  force_destroy             = each.value.force_destroy
  tags                      = merge(var.tags, try(each.value.tags, {}))
  s3_bucket_kms_key_id      = each.value.s3_bucket_kms_key_id
  sse_algorithm             = each.value.sse_algorithm
  lifecycle_expiration_days = each.value.lifecycle_expiration_days
}
