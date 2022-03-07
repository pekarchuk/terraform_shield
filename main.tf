module "eu-west-1" {
  source = "./modules"
  region = "eu-west-1"
  instance_count = "${var.instance_count}"
}

module "eu-west-2" {
  source = "./modules"
  region = "eu-west-2"
  instance_count = "${var.instance_count}"
}

module "eu-west-3" {
  source = "./modules"
  region = "eu-west-3"
  instance_count = "${var.instance_count}"
}

module "ap-south-1" {
  source = "./modules"
  region = "ap-south-1"
  instance_count = "${var.instance_count}"
}


module "sa-east-1" {
  source = "./modules"
  region = "sa-east-1" 
  instance_count = "${var.instance_count}"
}

module "ca-central-1" {
  source = "./modules"
  region = "ca-central-1" 
  instance_count = "${var.instance_count}"
}

module "ap-southeast-1" {
  source = "./modules"
  region = "ap-southeast-1" 
  instance_count = "${var.instance_count}"
}

module "ap-southeast-2" {
  source = "./modules"
  region = "ap-southeast-2" 
  instance_count = "${var.instance_count}"
}

module "eu-central-1" {
  source = "./modules"
  region = "eu-central-1" 
  instance_count = "${var.instance_count}"
}

module "us-west-1" {
  source = "./modules"
  region = "us-west-1"
  instance_count = "${var.instance_count}"
}
