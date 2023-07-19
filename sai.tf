provider "aws" {
  access_key = "AKIARI6U2P7R2L47SGXF"
  secret_key = "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"
  region     = "us-east-1"
}
resource "aws_s3_bucket" "bucket"{
bucket = "sai5233kolla8am-2345"
acl ="private"
tags={
Name ="sai"
Environment ="Dev"
}
}

