#!/bin/bash

source todo-list-aws/bin/activate
set -x
#export BASE_URL=$1
export BASE_URL= "https://i0169k5q84.execute-api.us-east-1.amazonaws.com/Prod
pipelines/common-steps/integration.sh" $BASE_URL
pytest -s test/integration/todoApiTest.py
