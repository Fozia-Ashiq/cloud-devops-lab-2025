# Bastion Host (Public Subnet)
resource "aws_instance" "bastion" {
  ami           = "ami-0c02fb55956c7d316"   # apne region ka Linux AMI use karo
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.public_subnet.id
  key_name      = "your-key-pair-name"      # SSH key pair ka naam
  associate_public_ip_address = true

  tags = {
    Name = "bastion-host"
  }
}

# Application Server (Private Subnet)
resource "aws_instance" "app_server" {
  ami           = "ami-0c02fb55956c7d316"   # apne region ka Linux AMI use karo
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.private_subnet.id
  key_name      = "your-key-pair-name"      # SSH key pair ka naam

  tags = {
    Name = "app-server"
  }
}
