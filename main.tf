resource "aws_instance" "Ubuntu_instance" {
  ami = var.ami
  instance_type = "t2.micro"
  key_name = "mykey"
  security_groups = ["${aws_security_group.UbuntuSG.name}"]
  
  tags = {
    Name = "Ubuntu-EC2"
  }
}