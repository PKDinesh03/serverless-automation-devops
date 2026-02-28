resource "aws_s3_bucket" "uploads" {
bucket = "serverless-${var.environment}-uploads-${random_id.suffix.hex}"}

resource "random_id" "suffix" {
  byte_length = 4
}