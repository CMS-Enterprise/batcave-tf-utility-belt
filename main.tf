module "gatus_bucket" {
  source                    = "git::git@github.com:CMS-Enterprise/batcave-tf-buckets.git//.?ref=0.3.0"
  s3_bucket_names           = var.bucket_specs["gatus"].s3_bucket_names
  force_destroy             = var.bucket_specs["gatus"].force_destroy
  tags                      = var.bucket_specs["gatus"].tags
  s3_bucket_kms_key_id      = var.bucket_specs["gatus"].s3_bucket_kms_key_id
  sse_algorithm             = var.bucket_specs["gatus"].sse_algorithm
  lifecycle_expiration_days = var.bucket_specs["gatus"].lifecycle_expiration_days
}

module "loki_bucket" {
  source                    = "git::git@github.com:CMS-Enterprise/batcave-tf-buckets.git//.?ref=0.3.0"
  s3_bucket_names           = var.bucket_specs["loki"].s3_bucket_names
  force_destroy             = var.bucket_specs["loki"].force_destroy
  tags                      = var.bucket_specs["loki"].tags
  s3_bucket_kms_key_id      = var.bucket_specs["loki"].s3_bucket_kms_key_id
  sse_algorithm             = var.bucket_specs["loki"].sse_algorithm
  lifecycle_expiration_days = var.bucket_specs["loki"].lifecycle_expiration_days
}

module "thanos_bucket" {
  source                    = "git::git@github.com:CMS-Enterprise/batcave-tf-buckets.git//.?ref=0.3.0"
  s3_bucket_names           = var.bucket_specs["thanos"].s3_bucket_names
  force_destroy             = var.bucket_specs["thanos"].force_destroy
  tags                      = var.bucket_specs["thanos"].tags
  s3_bucket_kms_key_id      = var.bucket_specs["thanos"].s3_bucket_kms_key_id
  sse_algorithm             = var.bucket_specs["thanos"].sse_algorithm
  lifecycle_expiration_days = var.bucket_specs["thanos"].lifecycle_expiration_days
}

module "velero_bucket" {
  source                    = "git::git@github.com:CMS-Enterprise/batcave-tf-buckets.git//.?ref=0.3.0"
  s3_bucket_names           = var.bucket_specs["velero"].s3_bucket_names
  force_destroy             = var.bucket_specs["velero"].force_destroy
  tags                      = var.bucket_specs["velero"].tags
  s3_bucket_kms_key_id      = var.bucket_specs["velero"].s3_bucket_kms_key_id
  sse_algorithm             = var.bucket_specs["velero"].sse_algorithm
  lifecycle_expiration_days = var.bucket_specs["velero"].lifecycle_expiration_days
}
