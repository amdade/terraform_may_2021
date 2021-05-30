# This is a file where you will be putting all your INPUT variables or PARAMETERS

variable "ami" {                  # 1. Define that it is a variable, Inside "" give a name for your variable
   type = string
   default = "ami-0cf6f5c8a62fa5da6"   # Amazon Linux 2 
   description = "This is AMI id for EC2 instance, Accepted Processor type 'x86'"
}

variable "instance_type" {
    type = string
    default = "t2.micro"
    description = "This is an instance type for EC2"
}

variable "env" {
    type = string
    default = "qa"
    description = "This is a variable for environments"
}

