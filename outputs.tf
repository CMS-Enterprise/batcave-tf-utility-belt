output "gatus_s3_buckets" {
  value = module.bucket["gatus"].s3_buckets
}

output "loki_s3_buckets" {
  value = module.bucket["loki"].s3_buckets
}

output "thanos_s3_buckets" {
  value = module.bucket["thanos"].s3_buckets
}

output "velero_s3_buckets" {
  value = module.bucket["velero"].s3_buckets
}

