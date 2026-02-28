# Serverless Automation Pipeline (DevOps Project)

## Overview
Built an event-driven serverless automation system where file uploads trigger cloud functions to process data and store metadata in a NoSQL database.

## Architecture
- S3 for file uploads
- Lambda for processing
- DynamoDB for storage
- CloudWatch for monitoring & alerts
- Terraform for Infrastructure as Code
- GitHub Actions for CI/CD

## Key DevOps Skills
- Serverless architecture
- Infrastructure as Code (Terraform)
- Event-driven automation
- CI/CD pipelines
- Monitoring and alerting
- Cloud security (IAM least privilege)

## How It Works
1. User uploads file to S3
2. Lambda processes metadata
3. Results stored in DynamoDB
4. Metrics visible in CloudWatch dashboard
5. Alerts triggered on failures

## Reliability
- Implemented Dead Letter Queue using SQS to capture failed Lambda events for debugging and replay.

## Environments
- Supports multiple environments (dev/prod) using Terraform variables.

## Cost Optimization
- Designed to stay within AWS Free Tier limits.
- Uses serverless services with pay-per-use pricing.