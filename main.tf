
resource "aws_instance" "test_instance" {
  ami           = "ami-080e1f13689e07408"  
  instance_type = "t2.micro"

metadata_options {
    http_tokens = "required"
  }

 root_block_device {
    volume_type           = "gp2"
    volume_size           = 2 
    encrypted             = true 
  }

  ebs_block_device {
    device_name           = "/dev/sdb"
    volume_type           = "gp2"
    volume_size           = 2  
    encrypted             = true 
  }
  tags = {
    name = "test"
    created_by = "Palak"
  }          
}
