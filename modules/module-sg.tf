#Create a security group that allows traffic from the internet 
resource "aws_security_group" "terraform-sg" {
  name   = "terraform-sg"
  vpc_id = var.vpc_id

  ingress {
    description = "Allow all SSH"
    from_port   = var.SSH
    to_port     = var.SSH
    protocol    = var.tcp
    cidr_blocks = [var.cidr]
  }

  ingress {
    description = "Allow all HTTP"
    from_port   = var.HTTP
    to_port     = var.HTTP
    protocol    = var.tcp
    cidr_blocks = [var.cidr]
  }

  ingress {
    description = "Allow all HTTPS"
    from_port   = var.HTTPS
    to_port     = var.HTTPS
    protocol    = var.tcp
    cidr_blocks = [var.cidr]
  }

  egress {
    description = "Allow all outbound"
    from_port   = var.egress-all
    to_port     = var.egress-all
    protocol    = var.egress
    cidr_blocks = [var.cidr]
  }

  tags = {
    Name = "Terraform SG"
  }
}
