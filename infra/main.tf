variable "sample" {
  type    = string
  default = "Sample"
}

data "external" "example" {
  program = ["aws", "iam list-policies"]
}

output "sample" {
  value = [for policy in data.external.example.result.Policies : policy.PolicyName]
}
