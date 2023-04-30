resource "aws_instance" "web" {
  instance_type = "t2.micro"
  ami           = "ami-060a87cc8d5dd5a91"
  key_name = "ivan-ec2-west-2"
  vpc_security_group_ids = ["${var.VM_sec_group}"]
  subnet_id              = var.private_subnet_id
  tags = {
    Name : "nginxVM"
  }
}

variable "VM_sec_group" {}
variable "private_subnet_id" {}
