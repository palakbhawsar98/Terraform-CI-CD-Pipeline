
resource "aws_instance" "test_instance" {
  ami           = "ami-0c55b159cbfafe1f0"  
  instance_type = "t2.micro"

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
