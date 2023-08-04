resource "aws_s3_bucket" "terraform-state" {
 bucket = "tf-state-demo-tfcloud-2"
 acl    = "private"

 versioning {
   enabled = true
 }
}

resource "aws_s3_bucket_public_access_block" "block" {
 bucket = aws_s3_bucket.terraform-state.id

 block_public_acls       = true
 block_public_policy     = true
 ignore_public_acls      = true
 restrict_public_buckets = true
}