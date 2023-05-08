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

output "sample" {
  value = var.sample
}
