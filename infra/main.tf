variable "sample" {
  type    = string
  default = "Sample"
}

output "sample" {
  value = "${var.sample}-${terraform.workspace}"
}
