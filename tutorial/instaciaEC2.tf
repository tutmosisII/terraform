provider "aws" {
   region  = "us-east-1"
   profile = "testing"
}

resource "aws_instance" "ejemplo_alm" {
  ami           = "ami-2757f631"
  instance_type = "t2.micro"
  subnet_id = "subnet-000e04fb070b36f93"
  tags {
    Name = "ejemplo_alm",
    team = "microservices"
  }
}