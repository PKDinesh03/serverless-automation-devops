resource "aws_sqs_queue" "lambda_dlq" {
  name = "lambda-dlq-${var.environment}"
}