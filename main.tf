module "s3-ready" {
  source         = "./modules/s3-ready"
  bucket_s3_name = var.bucket_s3_name
  ec2_public_ip  = module.ec2-ready.public-ip
}

module "ec2-ready" {
  source = "./modules/ec2-ready"
  ssh_key_name = var.ssh_key_name
  ssh_public_key = var.ssh_public_key
  sg_ingress_cidr_blocks = var.sg_ingress_cidr_blocks
  sg_ingress_from_port = var.sg_ingress_from_port
  sg_ingress_protocol = var.sg_ingress_protocol
  sg_ingress_to_port = var.sg_ingress_to_port
  sg_egress_protocol = var.sg_egress_protocol
  sg_egress_cidr_blocks = var.sg_egress_cidr_blocks
  ec2_ami = var.ec2_ami
  ec2_instance_type = var.ec2_instance_type
  ec2_name = var.ec2_name
  sg_name = var.sg_name
  sg_egress_from_port = var.sg_egress_from_port
  sg_egress_to_port = var.sg_egress_to_port
  depends_on = [
    module.s3-ready.aws_s3_bucket
  ]
}