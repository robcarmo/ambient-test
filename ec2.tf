
resource "aws_instance" "web" {
  ami                    = "ami-0a695f0d95cefc163"
  instance_type          = "t3.micro"
  subnet_id              = var.subnet_ids[0]
  vpc_security_group_ids = [aws_security_group.web_sg.id]
  key_name               = "test-ambient"

  user_data = <<-EOF
              #!/bin/bash
              yum install -y httpd aws-cli
              systemctl enable httpd
              systemctl start httpd
              echo "Hello from $(hostname)" > /var/www/html/index.html
              EOF

  tags = {
    Name = "WebServer"
  }
}
