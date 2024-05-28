variable "bucket" {
  type = string
}
variable "rolename" {
  type = string
}

variable "ipno" {
  type=string
}
variable "ipno1" {
  type=string
}

variable "ipno2" {
  type=string
}

variable "ipno3" {
  type=string
}

variable "ami_id" {
    type = string
}
variable "ec2type" {
  type = string
}

/*
variable "bucket" {
  type = map(object({
    bucket_name = string
  }))
}

variable "rolename" {
  type = map(object({
    rolename = string
  }))
}

variable "project" {
  type = map(object({
    ipno = string,
    ipno1 = string,
    ipno2 = string,
    ipno3 = string
  }))
}
*/