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

variable "ssh_key_name" {

    description = "name of public key"
    type = string
  
}

variable "ssh_public_key" {

    description = "ssh public key"
    type = string
}

