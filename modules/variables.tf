variable "region" {
  type = string
}

variable "instance_count" {
  type    = number
  default = 1
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "default_tags" {
  type    = map
  default = {UAshield = true}
}

variable "uashield_ami" {
    type    = string
    default = ""
}

variable "uashield_ami_owner" {
    type    = string
    default = "080745253264"
}
