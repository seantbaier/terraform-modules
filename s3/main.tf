data "aws_caller_identity" "current" {}

locals {
  aws_region  = "us-east-1"
  env         = "development"
  app_name    = "studiosauce"
  domain_name = "${local.app_name}.io"
}

provider "aws" {
  region = local.aws_region
}


// resource "aws_s3_bucket" "terraform_state" {
//   bucket = "${local.app_name}-s3-terraform"
//   acl    = "private"
  
//   versioning {
//     enabled = true
//   }

//   server_side_encryption_configuration {
//     rule {
//       apply_server_side_encryption_by_default {
//         sse_algorithm = "AES256"
//       }
//     }
//   }
  
//   tags = {
//     Name        = "${local.app_name}-s3-terraform-${local.aws_region}"
//     Environment = "dev"
//   }
// }

// # Provides additional layers of security to block all public access to the bucket
// resource "aws_s3_bucket_public_access_block" "this" {
//   bucket                  = aws_s3_bucket.terraform_state.id
//   block_public_acls       = true
//   block_public_policy     = true
//   ignore_public_acls      = true
//   restrict_public_buckets = true
// }
