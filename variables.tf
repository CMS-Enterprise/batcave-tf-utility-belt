variable "bucket_specs" {
  type = map(object({
    s3_bucket_names = list(string)
    force_destroy = bool
    tags = map(any)
    s3_bucket_kms_key_id = string
    sse_algorithm = string
    lifecycle_expiration_days = number
  }))
  default = {}
}
