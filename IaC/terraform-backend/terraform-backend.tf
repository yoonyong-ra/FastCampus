resource "aws_s3_bucket" "terra-s3-tf-state" {

  bucket = "terra-s3-tf-state"

  tags = {
    "Name" = "terra-s3-tf-state"
  }
  
}

resource "aws_dynamodb_table" "terra-ddb-tf-lock" {

  depends_on   = [aws_s3_bucket.terra-s3-tf-state]
  name         = "terra-ddb-tf-lock"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }

  tags = {
    "Name" = "terra-ddb-tf-lock"
  }

}