terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.69.0"
    }
  }
}

provider "aws" {
  access_key = var.akey
  secret_key = var.skey
  region     = "ap-northeast-3"
}

terraform {
  cloud {

    organization = "team4"

    workspaces {
      name = "team4"
    }
  }
}
