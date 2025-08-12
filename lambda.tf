provider "aws" {
  region = "us-east-1"
}


module "lambda_function" {
  source = "terraform-aws-modules/lambda/aws"

  function_name = "brandon-test"
  description   = "My awesome lambda function"
  handler       = "index.lambda_handler"
  runtime       = "nodejs22.x"

  source_path = "function.js"

  tags = {
    Name = "my-lambda1"
  }
}
