resource "aws_glue_job" "Terraform_Glue_sample" {
  name         = "Terraform_Glue_sample"
  description  = "job-desc"
  role_arn     = "arn:aws:iam::581359679426:role/aws_glue_role"
  max_capacity = 2
  max_retries  = 1
  timeout      = 60
  glue_version = "2.0"
  

  command {
    script_location = "s3://terraform-glue-bucket/sample.py"
    python_version  = "3"
  }

  default_arguments = {
    "--job-language"          = "python"
    "--ENV"                   = "dev"
    "--spark-event-logs-path" = "s3://terraform-glue-bucket"
    "--job-bookmark-option"   = "job-bookmark-enable"
    "--enable-spark-ui"       = "true"
  }

  execution_property {
    max_concurrent_runs = 1
  }
}