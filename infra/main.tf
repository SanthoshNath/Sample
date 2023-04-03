variable "sample" {
  type    = string
  default = "Sample"
}

provider "aws" {}

data "aws_iam_role" "example" {
  name = "GitHubActions"
}

output "sample" {
  value = "${var.sample}-${terraform.workspace}"
}
