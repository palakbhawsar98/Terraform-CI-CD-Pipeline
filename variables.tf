variable "ami" {
  type    = string
  default = "ami-080e1f13689e07408"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "volume_type" {
  type    = string
  default = "gp2"
}

variable "volume_size" {
  type    = number
  default = 8
}

variable "tags" {
  type = map(string)
  default = {
    name       = "test"
    created_by = "Palak"
  }
}


