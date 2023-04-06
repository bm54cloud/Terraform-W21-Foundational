module "ec2-instance" {
  source = "./modules"
}

module "security-group" {
  source = "./modules"
}

module "autoscaling" {
  source = "./modules"
}

