variable "sample" {
  type    = string
  default = "Sample"
}

provider "aws" {}

data "aws_iam_roles" "roles" {}

output "sample" {
  value = "${var.sample}-${terraform.workspace}"
}
