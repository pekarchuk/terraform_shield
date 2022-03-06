terraform {
  required_version = ">= 1.1.7"
}

provider "aws" {
  region = var.region
}

resource "aws_instance" "server" {
  count           = var.instance_count
  ami             = var.ami
  instance_type   = var.instance_type
  security_groups = [aws_security_group.uashield_sg.name]

  tags = {
    Name = "UAShield"
  }
}

resource "aws_security_group" "uashield_sg" {
  name = "uashield-sg"
}

resource "aws_security_group_rule" "ingress_rule_ssh" {
  security_group_id = aws_security_group.uashield_sg.id
  type              = "ingress"
  cidr_blocks       = ["0.0.0.0/0"]
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
}

resource "aws_security_group_rule" "ingress_rule_9100" {
  security_group_id = aws_security_group.uashield_sg.id
  type              = "ingress"
  cidr_blocks       = ["0.0.0.0/0"]
  from_port         = 9100
  to_port           = 9100
  protocol          = "tcp"
}

resource "aws_security_group_rule" "ingress_rule_9200" {
  security_group_id = aws_security_group.uashield_sg.id
  type              = "ingress"
  cidr_blocks       = ["0.0.0.0/0"]
  from_port         = 9200
  to_port           = 9200
  protocol          = "tcp"
}

resource "aws_security_group_rule" "egress_rule" {
  security_group_id = aws_security_group.uashield_sg.id
  type              = "egress"
  cidr_blocks       = ["0.0.0.0/0"]
  from_port         = 0
  to_port           = 0
  protocol          = -1
}
