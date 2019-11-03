variable "region" {
  type = "map"
  default = {
    "N_Virginia" = "us-east-1"
    "Ohio" = "us-east-2"
    "N_California" = "us-west-1"
    "Oregon" = "us-west-2"
  }
}

data "aws_route53_zone" "dns_private_zone" {
  name         = "BBBBB"
  private_zone = true
}

data "aws_route53_zone" "dns_reverse_zone" {
  name         = "CCCCC"
  private_zone = true
}

data "aws_route53_zone" "dns_public_zone" {
  name         = "DDDDD"
  private_zone = false
}

variable "subnets" {
  type = "map"
  default = {
    "AAAAA002useast2-public-us-east-2a-sn"  = "EEEEE"
    "AAAAA002useast2-public-us-east-2b-sn"  = "FFFFF"
    "AAAAA002useast2-public-us-east-2c-sn"  = "GGGGG"
    "AAAAA002useast2-private-us-east-2a-sn" = "HHHHH"
    "AAAAA002useast2-private-us-east-2b-sn" = "IIIII"
    "AAAAA002useast2-private-us-east-2c-sn" = "JJJJJ"
  }
}

variable "secgroups" {
  type = "map"
  default = {
    "AAAAA002useast2-bastion-security-group" = "KKKKK"
    "AAAAA002useast2-public-security-group"  = "LLLLL"
    "AAAAA002useast2-private-security-group" = "MMMMM"
  }
}

variable "amis" {
  type = "map"
  default = {
    "ubuntu_18_04" = "ami-064a0193585662d74"
    "centos_7"  = "ami-02eac2c0129f6376b"
  }
}

variable "instance_type" {
  type = "map"
  default = {
    "nano"    = "t2.nano"
    "micro"   = "t2.micro"
    "small"   = "t2.small"
    "medium"  = "t2.medium"
    "large"   = "t2.large"
    "xlarge"  = "t2.xlarge"
    "2xlarge" = "t2.2xlarge"
  }
}

variable "keypairs" {
  type = "map"
  default = {
    "kp_1" = "NNNNN"
  }
}

variable "public_key" {
  default = "z/NNNNN.pub"
}

variable "private_key" {
  default = "z/NNNNN.pem"
}

variable "ansible_user" {
  type = "map"
  default = {
    "ubuntu_18_04" = "ubuntu"
    "centos_7"  = "centos"
  }
}
