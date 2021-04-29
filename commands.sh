# Create an S3 bucket
aws s3 mb s3://sam-code-artifacts-3

# Package Cloud Formation (sam package)
aws cloudformation package --s3-bucket sam-code-artifacts-3 --template-file template.yaml --output-template-file template-generated.yaml

# Deploy
aws cloudformation deploy --template-file template-generated.yaml --stack-name iteration3-sam --capabilities CAPABILITY_IAM


aws cloudformation deploy --debug --template-file template-generated.yaml --stack-name iteration3-sam --capabilities CAPABILITY_IAM
