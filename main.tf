provider "aws" {
  region = var.region
}

# You cannot create a new backend by simply defining this and then
# immediately proceeding to "terraform apply". The S3 backend must
# be bootstrapped according to the simple yet essential procedure in
# https://github.com/cloudposse/terraform-aws-tfstate-backend#usage
module "terraform_state_backend" {
  source     = "cloudposse/tfstate-backend/aws"
  version    = "0.33.0"
  namespace  = "zerovortex"
  stage      = "production"
  name       = "terraform"
  attributes = ["state"]

  terraform_backend_config_file_path = "."
  terraform_backend_config_file_name = "backend.tf"
  force_destroy                      = false

  block_public_acls = true
  block_public_policy = true
  enable_point_in_time_recovery = true
  enable_public_access_block = true
  enable_server_side_encryption = true
  prevent_unencrypted_uploads = true
}

provider "cloudflare" {
  # Cloudflare email saved in $CLOUDFLARE_EMAIL
  # Cloudflare API key saved in $CLOUDFLARE_TOKEN
}
