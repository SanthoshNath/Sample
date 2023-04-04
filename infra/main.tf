variable "sample" {
  type    = string
  default = "Sample"
}

data "external" "example" {
  program = ["bash", "aws iam list-policies | jq '[.Policies[].PolicyName]'"]
}

output "sample" {
  value = data.external.example.result
}
