resource "aws_lambda_function" "processor" {
  function_name = "file-processor-${var.environment}"
  role          = aws_iam_role.lambda_role.arn
  handler       = "handler.lambda_handler"
  runtime       = "python3.10"

  timeout      = 10
  memory_size = 128
  filename    = "../lambda/lambda.zip"

  environment {
    variables = {
      TABLE_NAME = aws_dynamodb_table.files.name
    }
  }

  dead_letter_config {
    target_arn = aws_sqs_queue.lambda_dlq.arn
  }
}