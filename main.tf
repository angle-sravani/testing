provider "aws" {
  region = "us-east-1"  # Replace with your desired region
}

resource "aws_instance" "example" {
  count         = 3  # This specifies the number of instances to create
  ami           = "ami-0e2c8caa4b6378d8c"  # Replace with your desired AMI ID
  instance_type = "t2.micro"  # Replace with your desired instance type

  tags = {
    Name = "jenkins${count.index + 1}"  # This will name the instances as ExampleInstance1, ExampleInstance2, etc.
  }
}
