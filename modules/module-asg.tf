#Create an autoscaling group across 2 subnets in your default VPC
#Min=2, Max=5
resource "aws_autoscaling_group" "tf-asg" {
  name = "tf-asg"
  min_size = 2
  max_size = 5
  desired_capacity = 2
  availability_zones = var.availability_zones
  launch_template {
    id = aws_launch_template.terraform-lt-1.id 
  }
  
  tag {
    key                 = "Name"
    value               = "tf-asg-instance"
    propagate_at_launch = true
  }
}

resource "aws_launch_template" "terraform-lt-1" {
  name        = var.lt-name
  image_id          = var.ami
  instance_type     = var.instance_type
  key_name   = var.key_name
  vpc_security_group_ids = [aws_security_group.terraform-sg.id]
  user_data = filebase64("${path.root}/apache-install.sh")
}
