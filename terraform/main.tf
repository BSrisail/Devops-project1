provider "aws" {
  region = "us-east-1"  # Change to your preferred region
}

resource "aws_instance" "FE" {
  ami                    = "ami-0b4f379183e5706b9" 
  instance_type          = "t3.micro"              
  vpc_security_group_ids = ["sg-0ed5cc77a2216d028"] 
  subnet_id              = "subnet-0b311752c17c09dbb" 

  tags = {
    Name        = "FE"
    Environment = "Development"
    Terraform   = "true"
  }
}