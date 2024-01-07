terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
    backend "s3" {
    bucket = "terraform-remote-state-arundevonline"      #create bucket with this name in aws cloud
    key    = "terraform-remote-state"
    region = "us-east-1"
    dynamodb_table = "terraform-remote-state-arundevonline-lock" #create dunamodb lock with this name in aws cloud
  }
    
}



provider "aws" {
   region = "us-east-1"

}
