variable "sample" {
  type    = string
  default = "sample"
}

output "sample" {
  value = "${var.sample}-${terraform.workspace}"
}
