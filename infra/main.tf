variable "sample" {
  type    = string
  default = "Sample"
}

resource "null_resource" "this" {
  triggers = {
    sample = "Sample"
  }
  
#   lifecycle {
#     postcondition {
#       condition     = var.sample == "Sample"
#       error_message = "Not Sample"
#     }
#   }
}

locals {
  sample = <<-EOT
    %{ for ip in aws_instance.example[*].private_ip ~}
    server ${ip}
    %{ endfor ~}
  EOT
}

output "sample" {
  value = local.sample
}
