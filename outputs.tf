output "public-ip" {

    description = "Public address ip"
    value = module.ec2-ready.public-ip
  
}