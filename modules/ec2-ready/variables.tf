variable "ssh_key_name" {

    description = "name of public key"
    type = string
  
}

variable "ssh_public_key" {

    description = "ssh public key"
    type = string
}

variable "sg_ingress_cidr_blocks" {

    description = "cidr blocks for ingress"
    type = list(string)
  
}

variable "sg_ingress_from_port" {

    description = "ingress from port"
    type = number
  
}

variable "sg_ingress_protocol" {

    description = "ingress protocol"
    type = string
  
}

variable "sg_ingress_to_port" {

    description = "ingress to port"
    type = number
  
}

variable "sg_egress_protocol" {

    description = "egress protol"
    type = number
  
}

variable "sg_egress_cidr_blocks" {

    description = "egress cidr blocks"
    type = list(string)
  
}

variable "ec2_ami" {

    description = "ec2 ami"
    type = string
  
}

variable "ec2_instance_type" {

    description = "instance type ec2"
    type = string
  
}

variable "ec2_name" {

    description = "name"
    type = string
  
}

variable "sg_name" {

    description = "name of security group"
    type = string
  
}

variable "sg_egress_from_port" {

    description = "egress fro port"
    type = number
  
}

variable "sg_egress_to_port" {

    description = "egress to port"
    type = number
  
}