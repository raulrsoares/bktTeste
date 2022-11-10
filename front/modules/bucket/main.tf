resource "aws_s3_bucket" "bucketTeste" {
  bucket = "tf-${var.global_stage}-${var.bucketTeste}"
}


resource "aws_s3_bucket_acl" "bucketTeste-acl" {
  bucket = aws_s3_bucket.bucketTeste.id
  acl    = "private" 

  depends_on = [
    aws_s3_bucket.bucketTeste
  ]
}

resource "aws_s3_bucket_public_access_block" "codepipeline-block-public" {
  bucket = aws_s3_bucket.bucketTeste.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}
  

resource "null_resource" "expose_bucketname" {
  provisioner "local-exec" {
    command = "echo 'bucket name is:${aws_s3_bucket.bucketTeste.bucket}'"
  }
}
