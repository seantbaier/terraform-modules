# Generated by Terragrunt. Sig: nIlQXj57tbuaRZEa
terraform {
  backend "s3" {
    bucket         = "dev-studiosauce-s3-terraform"
    dynamodb_table = "dev-terraform-locks"
    encrypt        = true
    key            = "./terraform.tfstate"
    region         = "us-east-1"
  }
}
