import boto3
import json
import os
import logging

logger = logging.getLogger()
logger.setLevel(logging.DEBUG)

print('Loading function')

import json

def lambda_handler(event, context):
    return {
        'statusCode': 200,
        'body': json.dumps('Hello from Lambda!')
    }
