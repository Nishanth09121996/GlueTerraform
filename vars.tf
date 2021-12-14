variable "aws_region" {
  default = "us-east-1"
}
variable "amis" {
  type = map(any)
  default = {
    us-east-1 = "ami-0b0ea68c435eb488d"
  }
}
variable "PATH_TO_PRIVATE_KEY" {
  default = "mykey"
}

variable "PATH_TO_PUBLIC_KEY" {
  default = "mykey.pub"
}

variable "INSTANCE_USERNAME" {
  default = "ubuntu"
}