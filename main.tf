//--------------------------------------------------------------------
// Variables
variable "private_module_access_key" {}
variable "private_module_ami" {}
variable "private_module_instance_type" {}
variable "private_module_region" {}
variable "private_module_secret_key" {}

//--------------------------------------------------------------------
// Modules
module "private_module" {
  source  = "app.terraform.io/tforg123/private-module/ec2"
  version = "0.1"

  access_key = "${var.private_module_access_key}"
  ami = "${var.private_module_ami}"
  instance_type = "${var.private_module_instance_type}"
  region = "${var.private_module_region}"
  secret_key = "${var.private_module_secret_key}"
}
