

### Instance EC2 (VM)
####     ----> SSH-PUBLIC-KEY --> DONE
####     ----> SG (Sécurity Group) [22/TCP]  --> DONE


resource "aws_key_pair" "myssh-key" {

  key_name   = var.ssh_key_name
  public_key = var.ssh_public_key
  
}


resource "aws_security_group" "my-sg" {

  description = "Security group to allow incoming SSH connection to ec2 instance"
  name        = var.sg_name

  ingress = [{
    cidr_blocks      = var.sg_ingress_cidr_blocks
    description      = "Allow SSH"
    from_port        = var.sg_ingress_from_port
    ipv6_cidr_blocks = []
    prefix_list_ids  = []
    protocol         = var.sg_ingress_protocol
    security_groups  = []
    self             = false
    to_port          = var.sg_ingress_to_port
  }]

  egress = [{
    description      = "Allow connection to any internet service"
    from_port        = var.sg_egress_from_port
    to_port          = var.sg_egress_to_port
    protocol         = var.sg_egress_protocol
    cidr_blocks      = var.sg_egress_cidr_blocks
    self             = false
    ipv6_cidr_blocks = []
    prefix_list_ids = []
    security_groups = []

  }]

}


resource "aws_instance" "myec2" {

  ami             = var.ec2_ami
  instance_type   = var.ec2_instance_type
  key_name        = aws_key_pair.myssh-key.key_name # 1ère variable terraform
  security_groups = [aws_security_group.my-sg.name]
  tags = {
    "Name" = var.ec2_name
  }


}