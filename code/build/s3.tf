provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dev_s3" {
  bucket_prefix = "dev-"

  tags = {
    Environment          = "Dev"
    yor_name             = "dev_s3"
    yor_trace            = "d9ad9333-ca3f-40c0-9eae-3430509ec4fc"
    git_commit           = "9f983a5b38436c8db4445df1af0db333132128fa"
    git_file             = "code/build/s3.tf"
    git_last_modified_at = "2025-01-21 17:38:58"
    git_last_modified_by = "wdevanshepard@gmail.com"
    git_modifiers        = "wdevanshepard"
    git_org              = "mfnerd"
    git_repo             = "prisma-cloud-devsecops-workshop"
  }
}

resource "aws_s3_bucket_ownership_controls" "dev_s3" {
  bucket = aws_s3_bucket.dev_s3.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}
