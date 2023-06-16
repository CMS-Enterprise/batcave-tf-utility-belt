output "gatus_s3_buckets" {
  value = module.gatus_bucket.s3_buckets
}

output "loki_s3_buckets" {
  value = module.loki_bucket.s3_buckets
}

output "thanos_s3_buckets" {
  value = module.thanos_bucket.s3_buckets
}

output "velero_s3_buckets" {
  value = module.velero_bucket.s3_buckets
}

