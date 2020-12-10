variable "AWS_ACCESS_KEY" {}

variable "AWS_SECRET_KEY" {}

variable "AWS_REGION" {
    default = "us-east-1"
}

variable "AMIS" {
  type = map(string)

  default = {
    us-east-1 = "ami-074a777d5cae10210"
    us-west-2 = "ami-06b94666"
    eu-west-1 = "ami-0d729a60"
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

