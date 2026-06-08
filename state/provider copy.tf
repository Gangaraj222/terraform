terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

terraform {
  backend "s3" {
    bucket       = "terraform-state-file-raju"
    key          = "state-file"
    region       = "us-east-1"
    encrypt      = true
    use_lockfile = true #S3 native locking
  }
}