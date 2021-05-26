resource "aws_instance" "first_ec2" {
  ami           = "ami-0cf6f5c8a62fa5da6"
  instance_type = "t2.micro"
}

# Resource = creates and manages resources in Provider
# First label = resource that you like to create
# Second label = logical name or ID for your resource, Logical name has to be unique within "WORKING DIRECTORY"
# Arguments = Configurations or Components
# {} = If you open something, close it back


# Hard Coding vs Reference
# Hard Coding = Copied / Pasted the value, this will "" all the time (Static)
# Reference   = (Dynamic)

#### Terraform Commands #####
# 1. Commands need to be executed in the WORKING DIRECTORY

# Lock File Terraform has created a lock file .terraform.lock.hcl to record the provider
# selections it made above. Include this file in your version control repository
# so that Terraform can guarantee to make the same selections by default when
# you run "terraform init" in the future.