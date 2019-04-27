provider "aws" {}

data "aws_ami" "example" {
  owners = ["self"]

  filter {
    name = "name"
    values = ["my-test-ami"]
  }

  filter {
    name = "image-id"
    values = ["ami-03e98096f7d621560"]
  }
}

resource "aws_instance" "webserver" {
  ami           = "${data.aws_ami.example.id}"
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }
}