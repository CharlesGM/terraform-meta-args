provider "aws" {
  region = var.region
}

resource "aws_instance" "example" {
  count = var.instance_count

  ami           = "ami-0a0e5d9c7acc336f1" # Replace with a valid AMI ID for your region
  instance_type = "t2.micro"

  tags = {
    Name = "prod-Instance-${count.index}"
  }
}
