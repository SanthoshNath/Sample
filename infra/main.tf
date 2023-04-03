variable "sample" {
  type    = string
  default = "Sample"
}

providrr "aws" {}

data "aws_iam_role" "example" {
  name = "GitHubActions"
}

output "sample" {
  value = "${var.sample}-${terraform.workspace}"
}
