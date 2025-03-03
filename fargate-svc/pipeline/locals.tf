/*
This file is managed by AWS Proton. Any changes made directly to this file will be overwritten the next time AWS Proton performs an update.

To manage this resource, see AWS Proton Resource: arn:aws:proton:ap-northeast-1:443437525071:service/fargate-svc/pipeline

If the resource is no longer accessible within AWS Proton, it may have been deleted and may require manual cleanup.
*/

locals {
  account_id              = data.aws_caller_identity.current.account_id
  region                  = data.aws_region.current.id
  environment_account_ids = split(",", var.pipeline.inputs.environment_account_ids)
}

