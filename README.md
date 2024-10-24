module "cyberhaven_s3" {
  source  = "app.terraform.io/turo/s3-bucket/aws"
  version = "12.0.1"

  description                    = "bucket to house evidence and findings from Cyberhaven"
  logging_bucket_name            = var.logging_bucket_name
  component_metadata             = module.component_cyberhaven.metadata
  bucket_versioning_enabled      = true
  server_side_encryption_enabled = true
  block_public_acls              = true
  block_public_policy            = true
  ignore_public_acls             = true
  restrict_public_buckets        = true
  attach_policy                  = true
  policy                         = data.aws_iam_policy_document.cyberhaven_bucket_policy.json
  acl                            = null

  data_type = "source"
  pii_descriptor = {
    has_pii      = true
    description  = "Could contains PII"
    contact_team = "IT Security"
    contact      = "pchitodkar@turo.com"
  }
  override_default_backup_behavior = "do-not-backup"
}
