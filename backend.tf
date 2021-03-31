terraform {
  required_version = ">= 0.12.2"

  backend "s3" {
    region         = "eu-central-1"
    bucket         = "zerovortex-production-terraform-state"
    key            = "terraform.tfstate"
    dynamodb_table = "zerovortex-production-terraform-state-lock"
    profile        = ""
    role_arn       = ""
    encrypt        = "true"
  }
}
