
resource "aws_instance" "web-Server" {
  ami           = var.ami_id
  instance_type = var.instance_type
  monitoring    = true
  ebs_optimized = true
  root_block_device {
    encrypted = true
  }
  metadata_options {
    http_endpoint = "disabled"
    http_tokens   = "required"
  }
  tags = {
    Name = "airbnb-web-server"
  }
}