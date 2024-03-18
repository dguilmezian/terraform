provider "null" {}

# Configuración de Nginx
resource "null_resource" "nginx" {
  provisioner "local-exec" {
    command = "./../scripts/setup.sh"
  }
}

# Variables
variable "nginx_config_path" {
  default = "../scripts/nginx.conf"
}
