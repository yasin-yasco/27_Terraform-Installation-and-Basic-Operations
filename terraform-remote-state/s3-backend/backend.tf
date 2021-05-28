resource "aws_s3_bucket" "tf-remote-state" {
  bucket = "tf-remote-s3-bucket-yasco"
  lifecycle {
    prevent_destroy = true
  }
  versioning {
    enabled = true
  }

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }
}

resource "aws_dynamodb_table" "tf-remote-state_lock" {
  name = "tf-s3-app-lock"
  hash_key = "LockID"
  attribute {
    name = "LockID"
    type = "S"
  }
  billing_mode = "PAY_PER_REQUEST"
}