terraform {
  required_version = ">= 0.12.2"

  backend "s3" {
    region         = "eu-central-1"
    bucket         = "zerovortex-prod-terraform-state"
    key            = "terraform.tfstate"
    dynamodb_table = "zerovortex-prod-terraform-state-lock"
    profile        = ""
    role_arn       = ""
    encrypt        = "true"
  }
}
