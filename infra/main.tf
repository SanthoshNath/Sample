variable "sample" {
  type    = string
  default = "Sample"
}

output "sample" {
  value = [for policy in data.external.example.result.Policies : policy.PolicyName]
}
