# Bastion Host (Public Subnet)
resource "aws_instance" "bastion" {
  ami           = "ami-0360c520857e3138f"  
  instance_type = "t3.micro"
  subnet_id     = aws_subnet.public_subnet.id
  key_name      = "devops-key"      
  associate_public_ip_address = true

  tags = {
    Name = "bastion-host"
  }
}

# Application Server (Private Subnet)
resource "aws_instance" "app_server" {
  ami           = "ami-0360c520857e3138f"  
  instance_type = "t3.micro"
  subnet_id     = aws_subnet.private_subnet.id
  key_name      = "devops-key"     

  tags = {
    Name = "app-server"
  }
}
