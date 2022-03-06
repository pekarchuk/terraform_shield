module "eu-west-2" {
  source = "./modules"
  region = "eu-west-2"
  ami    = "ami-0c4be5d99620037c5"
}

module "eu-central-1" {
  source = "./modules"
  region = "eu-central-1"
  ami    = "ami-08b0d032cd9994c6f"
}

module "eu-west-3" {
  source = "./modules"
  region = "eu-west-3"
  ami    = "ami-0b1a9e3754bbf1109"
}
