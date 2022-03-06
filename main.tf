# ap-south-1 = ami-030ab69a28bf3258a
# eu-west-3 = ami-0b1a9e3754bbf1109
# eu-west-2 = ami-0c4be5d99620037c5
# eu-west-1 = ami-0c90cd4defa59273f
# sa-east-1 = ami-060ebe11c48286444
# ca-central-1 = ami-07af30dba5586c26c
# ap-southeast-1 = ami-0f44d7a5111ab1aba
# ap-southeast-2 = ami-0f60636dfd744f353
# eu-central-1 = ami-08b0d032cd9994c6f
# us-west-1 = ami-06b5fca0d88092130
# 
# module "ap-south-1" {
#   source = "./modules"
#   region = "ap-south-1"
#   ami    = "ami-030ab69a28bf3258a"
# }
# 
# 
# module "sa-east-1" {
#   source = "./modules"
#   region = "sa-east-1"
#   ami    = "ami-0c4be5d99620037c5"
# }
# 
# 
# module "eu-west-2" {
#   source = "./modules"
#   region = "eu-west-2"
#   ami    = "ami-0c4be5d99620037c5"
# }
# 
# module "eu-west-2" {
#   source = "./modules"
#   region = "eu-west-2"
#   ami    = "ami-0c4be5d99620037c5"
# }
# 
# 
# module "eu-west-2" {
#   source = "./modules"
#   region = "eu-west-2"
#   ami    = "ami-0c4be5d99620037c5"
# }


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
