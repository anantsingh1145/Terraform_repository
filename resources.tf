## Generating the key for the instance Creation
resource "aws_key_pair" "FirstIn\\stanceKey" {
  key_name   = "FirstInstancekey"
  public_key = file("${path.module}/id_rsa.pub")
}

##Generating the First Instance for testing
resource "aws_instance" "MyFirstInstance" {
  ami           = "ami-0cd59ecaf368e5ccf"
  instance_type = "t2.micro"
  tags = {
    Name = "My First Instance Created from Terraform"
  }
}

