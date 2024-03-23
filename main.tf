
resource "aws_instance" "test_instance" {
  ami           = "ami-0c55b159cbfafe1f0"  
  instance_type = var.instance_type 
  tags = {
    name = "test"
    created_by = "Palak"
  }          
}
