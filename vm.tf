resource "aws_instance" "web" {
  instance_type = "t2.micro"
  ami           = "ami-057d3df51a1c53485"
  key_name = "ivan-ec2-west-2"
  vpc_security_group_ids = ["${var.VM_sec_group}"]
  subnet_id              = var.private_subnet_id
  tags = {
    Name : "nginxVM"
  }
}

variable "VM_sec_group" {}
variable "private_subnet_id" {}
