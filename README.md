# batcave-tf-utility-belt

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.2 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 4.61.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_bucket"></a> [bucket](#module\_bucket) | git::git@github.com:CMS-Enterprise/batcave-tf-buckets.git//. | 0.5.0 |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_bucket_specs"></a> [bucket\_specs](#input\_bucket\_specs) | n/a | `map(any)` | `{}` | no |
| <a name="input_cluster_name"></a> [cluster\_name](#input\_cluster\_name) | n/a | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | n/a | `map(any)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_buckets"></a> [buckets](#output\_buckets) | n/a |
| <a name="output_loki_s3_buckets"></a> [loki\_s3\_buckets](#output\_loki\_s3\_buckets) | n/a |
| <a name="output_thanos_s3_buckets"></a> [thanos\_s3\_buckets](#output\_thanos\_s3\_buckets) | n/a |
| <a name="output_velero_s3_buckets"></a> [velero\_s3\_buckets](#output\_velero\_s3\_buckets) | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
