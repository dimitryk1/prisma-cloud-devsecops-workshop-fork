provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dev_s3" {
  bucket_prefix = "dev-"

  tags = {
    Environment          = "Dev"
    yor_name             = "dev_s3"
    yor_trace            = "7e6fd662-c1c3-4f68-8412-7bd8a76eb97c"
    git_commit           = "f60f88113fcec59a4c257cee1cf387e347c9ae6e"
    git_file             = "code/build/s3.tf"
    git_last_modified_at = "2025-05-15 21:34:20"
    git_last_modified_by = "pomidorov.ivan@gmail.com"
    git_modifiers        = "pomidorov.ivan"
    git_org              = "dimitryk1"
    git_repo             = "prisma-cloud-devsecops-workshop-fork"
  }
}

resource "aws_s3_bucket_ownership_controls" "dev_s3" {
  bucket = aws_s3_bucket.dev_s3.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}
