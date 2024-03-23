
resource "aws_instance" "test_instance" {
  ami           = "ami-0c55b159cbfafe1f0"  
  instance_type = "t2.micro"
  tags = {
    name = "test"
    created_by = "Palak"
  }          
}
