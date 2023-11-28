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
    %{for ip in ["10.1.16.154", "10.1.16.1", "10.1.16.34"]~}
    server ${ip}
    %{endfor~}
  EOT
}

output "sample" {
  value = local.sample
}
