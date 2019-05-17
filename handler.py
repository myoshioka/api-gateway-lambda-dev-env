import os
import json


def run(event, context):

    test_env = os.getenv('TEST_ENV')
    body = {'envValue': test_env}

    response = {
        'statusCode': '200',
        'headers': 'application/json',
        'body': json.dumps(body)
    }
    return response
