provider "aws" {
    region = "eu-west-2"
}
resource "aws_s3_bucket" "s3bucket-terraform-project" {
  bucket = "s3bucket-terraform-project"
}
resource "aws_s3_bucket" "s3bucket-terraform-project26" {
  bucket = "s3bucket-terraform-project26"
}
terraform {
  backend "s3" {
    # Replace this with your bucket name!
    bucket = "s3bucket-terraform-project"
    key    = "global/s3/terraform.tfstate"
    region = "eu-west-2"
 

  }
}
