# Create an S3 bucket
aws s3 mb s3://sam-code-bucket-3

# Package Cloud Formation (sam package)
aws cloudformation package --s3-bucket sam-code-bucket-3 --template-file template.yaml --output-template-file template-generated.yaml

# Deploy
aws cloudformation deploy --template-file template-generated.yaml --stack-name iteration3-sam --capabilities CAPABILITY_IAM


aws cloudformation deploy --guided --template-file template-generated.yaml --stack-name iteration3-sam --capabilities CAPABILITY_IAM

######
