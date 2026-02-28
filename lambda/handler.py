import json
import boto3
import os
from datetime import datetime

dynamodb = boto3.resource("dynamodb")
table = dynamodb.Table(os.environ["TABLE_NAME"])

def lambda_handler(event, context):
    record = event["Records"][0]
    file_name = record["s3"]["object"]["key"]
    file_size = record["s3"]["object"]["size"]

    item = {
        "fileName": file_name,
        "uploadedAt": datetime.utcnow().isoformat(),
        "fileSize": file_size,
        "status": "PROCESSED"
    }

    table.put_item(Item=item)

    return {
        "statusCode": 200,
        "body": json.dumps("File processed successfully")
    }