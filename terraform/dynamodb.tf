resource "aws_dynamodb_table" "files" {
name = "processed-files-${var.environment}"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "fileName"

  attribute {
    name = "fileName"
    type = "S"
  }
}