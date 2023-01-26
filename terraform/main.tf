terraform {
  required_version = ">= 0.13.1"
required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.48.0"
    }
  }
}
provider "aws" {
    region = "us-east-1"
    access_key = "${var.access_key}"
    secret_key = "${var.secret_key}"
}
data "aws_availability_zone" "aws_zone" {
    state = "available"
  
}
