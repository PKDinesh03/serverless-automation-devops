output "environment" {
  value       = var.environment
  description = "Deployment environment"
}

output "s3_bucket_name" {
  value       = aws_s3_bucket.uploads.bucket
  description = "S3 bucket for file uploads"
}

output "lambda_function_name" {
  value       = aws_lambda_function.processor.function_name
  description = "Lambda function processing uploads"
}

output "dynamodb_table_name" {
  value       = aws_dynamodb_table.files.name
  description = "DynamoDB table storing file metadata"
}

output "dlq_name" {
  value       = aws_sqs_queue.lambda_dlq.name
  description = "Dead Letter Queue for failed Lambda events"
}