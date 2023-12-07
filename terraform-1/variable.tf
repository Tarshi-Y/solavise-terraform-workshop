variable "cidr" {
  type = list
  default = ["10.0.1.0/24","10.0.2.0/24"]
}

variable "az" {
  type = list
  default = ["us-east-1a", "us-east-1b"]
}

variable "ami" {
  type = string
  default = "ami-0230bd60aa48260c6"
}

variable "instance_type" {
  type = string
  default = "t2.micro"
}

