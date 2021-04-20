variable "region" {
  default = "us-east-1"
}

variable "cidr" {
  default = "10.0.0.0/16"
}

variable  "vpc_name" {
   default =  "tfvpc_modified"
}

variable "pubsub1" {
  default = "10.0.0.0/24"
}

variable "pubsub2" {
  default = "10.0.1.0/24"
}

variable  "igw" {
   default =  "igw"
}

variable  "rt" {
  default = "rt"
}

