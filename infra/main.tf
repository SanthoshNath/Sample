variable "sample" {
  type    = string
  default = "Sample"
}

data "aws_iam_role" "example" {
  name = "GitHubActions"
}

output "sample" {
  value = "${var.sample}-${terraform.workspace}"
}
