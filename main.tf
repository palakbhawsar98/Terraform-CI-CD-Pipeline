resource "aws_instance" "test_instance" {
  ami           = var.ami
  instance_type = var.instance_type

  metadata_options {
    http_tokens   = "required"
    http_endpoint = "enabled"
  }

  root_block_device {
    volume_type = var.volume_type
    volume_size = var.volume_size
    encrypted   = true
  }

  ebs_block_device {
    device_name = "/dev/sdb"
    volume_type = var.volume_type
    volume_size = var.volume_size
    encrypted   = true
  }

  tags = var.tags
}
