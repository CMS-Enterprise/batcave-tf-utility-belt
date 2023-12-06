variable "bucket_specs" {
  type = map(any)
  ## Cannot configure strict typing or local default will be blown away by implicit object defaults
  #type = map(object({
  #  bucket_name_override      = optional(string)
  #  force_destroy             = optional(bool)
  #  tags                      = optional(map(any))
  #  s3_bucket_kms_key_id      = optional(string)
  #  sse_algorithm             = optional(string)
  #  lifecycle_expiration_days = optional(number)
  #}))
  default = {}
}

variable "cluster_name" {
  type = string
}

variable "tags" {
  type    = map(any)
  default = {}
}
