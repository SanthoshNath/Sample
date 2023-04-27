variable "sample" {
  description = "Sample"
  type = string
  default = "Sample"
}

output "sample" {
  value = var.sample
}
