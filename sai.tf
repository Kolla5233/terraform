provider "aws" {
  access_key = "AKIARI6U2P7R2L47SGXF"
  secret_key = "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"
  region     = "us-east-1"
}
resource "aws_s3_bucket" "bucket"{
bucket = "sai5233kolla8am"
acl ="private"
tags={
Name ="sai"
Environment ="Dev"
}
}
resource "aws_s3_bucket_object" "file" {

  bucket = aws_s3_bucket.bucket.id

  key    = "saikolla8am"

  acl    = "private"  # or can be "public-read"

  source = "/root/sai/hello8am.txt"

  etag = filemd5("/root/sai/hello8am.txt")
}
