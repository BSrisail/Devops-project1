provider "aws" {
  region = "us-east-1" 
}

resource "aws_instance" "tf-server" {
  ami                    = "ami-0b4f379183e5706b9" 
  instance_type          = "t2.micro"              
  vpc_security_group_ids = ["sg-0ed5cc77a2216d028"] 
  subnet_id              = "subnet-0b311752c17c09dbb" 

  tags = {
    Name        = "tf-server"
    Environment = "Development"
    Terraform   = "true"
  }
}