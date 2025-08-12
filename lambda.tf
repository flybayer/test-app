

# ------------------------------------------------------------------------------------------------------
# DEPLOY GRUNTWORK'S LAMBDA MODULE
# ------------------------------------------------------------------------------------------------------

module "lambda" {

  source = "git::git@github.com:gruntwork-io/terraform-aws-lambda.git//modules/lambda?ref=v1.1.0"

  # ----------------------------------------------------------------------------------------------------
  # REQUIRED VARIABLES
  # ----------------------------------------------------------------------------------------------------

  # The maximum amount of memory, in MB, your Lambda function will be able to
  # use at runtime. Can be set in 64MB increments from 128MB up to 1536MB. Note
  # that the amount of CPU power given to a Lambda function is proportional to
  # the amount of memory you request, so a Lambda function with 256MB of memory
  # has twice as much CPU power as one with 128MB.
  memory_size = 64

  # The name of the Lambda function. Used to namespace all resources created by
  # this module.
  name = "brandon-test-lambda"

  # The maximum amount of time, in seconds, your Lambda function will be allowed
  # to run. Must be between 1 and 300 seconds.
  timeout = 5


}

