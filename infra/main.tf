variable "sample" {
  type    = string
  default = "Sample"
}

data "external" "example" {
  program = ["bash", "sample.sh"]
}

output "sample" {
  value = data.external.example.result
}
