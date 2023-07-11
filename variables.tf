variable "bucket_specs" {
  type = map(object({
    bucket_name_override = optional(string, "")
    force_destroy = optional(bool, false)
    tags = optional(map(any), {})
    s3_bucket_kms_key_id = optional(string, null)
    sse_algorithm = optional(string, "aws:kms")
    lifecycle_expiration_days = optional(number, null)
  }))
  default = {}
}

variable "cluster_name" {
  type = string
}
