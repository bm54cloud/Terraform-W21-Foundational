#Create EC2 instance resource
#Bootstrap Apache webserver to the instance 
resource "aws_instance" "instance-1" {
  ami           = var.ami
  instance_type = var.instance_type
  key_name      = var.key_name
  vpc_security_group_ids = [aws_security_group.terraform-sg.id]
  user_data                   = file("apache-install.sh")
  user_data_replace_on_change = true
  associate_public_ip_address = true

  tags = {
    Name        = var.instance-name-tag
    Environment = var.dev-tag
  }
}



