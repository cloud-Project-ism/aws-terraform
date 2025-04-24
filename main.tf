provider "aws" {
  region = "us-east-1" # Replace with your desired region
}

resource "aws_instance" "web" {
  ami           = "086a54924e40cab98" # Replace with your desired AMI
  instance_type = "t2.micro"
  user_data = <<-EOF
              #!/bin/bash
              echo "Hello, World!" > /var/www/html/index.html
              EOF

  tags = {
    Name = "terraform-example"
  }
}
