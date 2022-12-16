output "public-ip" {

    description = "Adresse ip publique"
    value = aws_instance.myec2.public_ip
  
}