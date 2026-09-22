data "aws_ssm_parameter" "amazon_linux" {
  name = "/aws/service/ami-amazon-linux-latest/al2023-ami-kernel-default-x86_64"
}

resource "aws_instance" "web" {
  ami           = data.aws_ssm_parameter.amazon_linux.value
  instance_type = var.instance_type

  subnet_id                   = aws_subnet.public.id
  vpc_security_group_ids     = [aws_security_group.ec2.id]
  key_name                    = var.key_name
  associate_public_ip_address = true

  user_data = <<-EOF
              #!/bin/bash
              dnf update -y
              dnf install -y httpd
              systemctl enable httpd
              systemctl start httpd

              echo "<h1>Terraform AWS Infrastructure</h1>" > /var/www/html/index.html
              echo "<p>Deployed using Terraform</p>" >> /var/www/html/index.html
              EOF

  tags = {
    Name = "terraform-web-server"
  }
}
