variable "aws_access_key" {

    description = "Aws access key for account"
    type = string

}

variable "aws_secret_key" {

    description = "Aws secret key for account"
    type = string

  
}

variable "aws_token_session" {

    description = "Aws token for account"
    type = string
  
}

variable "aws_region" {

    description = "region datacenter"
    type = string
  
}

variable "ssh_key_name" {}

variable "ssh_public_key" {}

variable "sg_ingress_protocol" {}

variable "sg_ingress_from_port" {}

variable "sg_ingress_to_port" {}

variable "sg_ingress_cidr_blocks" {}

variable "sg_egress_protocol" {}

variable "sg_egress_cidr_blocks" {}

variable "ec2_ami" {}

variable "ec2_instance_type" {}

variable "ec2_name" {}

variable "sg_name" {}

variable "sg_egress_from_port" {}

variable "sg_egress_to_port" {}

variable "bucket_s3_name" {}