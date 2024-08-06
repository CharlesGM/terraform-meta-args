provider "aws" {
  region = var.region
}

resource "aws_instance" "dev" {
  ami = "ami-0a0e5d9c7acc336f1"
  instance_type = "t2.micro"
  for_each = toset(var.instance_count)

  tags = {
    Name = "${each.key}"
  }
}