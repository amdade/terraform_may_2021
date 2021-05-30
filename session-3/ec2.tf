resource "aws_instance" "first_ec2" {
  ami                    = var.ami                          # Reference to Named Values, when you do reference, we don't use Quotations
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.first_sg.id] # Reference to Resource, when you do reference, we don't use Quotations
  tags = {
    Name = var.env
  }
}

resource "aws_instance" "second_ec2" {
  ami                    = var.ami                          # Reference to Named Values, when you do reference, we don't use Quotations
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.first_sg.id] # Reference to Resource, when you do reference, we don't use Quotations
  tags = {
    Name = "${var.env}-instance"                                 # dev-instance, when you are using prefix or suffix, you have to ${}. ${} represents that you are using variable
  }                                                              # referencing to named values ++ hardcoding
}

resource "aws_security_group" "first_sg" {        # Second label is a Logical Name for your code
  name        = "session-3"                       # Argument, this is a name for your resource
  description = "This is for testing"

  ingress {                                     # Ingress vs Egress ???
    description = "this is rule for session-3"  # Security group is stateful, meaning that, whatever port you define in ingress will apply to egress
    from_port   = 1                             # 1 2 3 4 5 6 ..... 443 = total 444 ports open
    to_port     = 22                            # [] = list
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"                         # -1 means ALL protocols, TCP, UDP, ICMP
    cidr_blocks = ["0.0.0.0/0"]
  }
}
# 1. Terraform INIT = initialize 
# 2. Terraform PLAN = shows you the execution plan
# 3. Terraform Apply = create or manage the resources

# Terraform.tfstate file is created = backend file (local backend)
# What is backend? 
# terraform.tfstate file gets created after you run Terraform Apply
# terraform.tfstate file is a desired state of your resources or Infrastructure 

############### Visual Studio ##############
// 1. Command + f = find
// 2. Command + / = comment and uncomment
// 3. Highlight the word + Command + D = Grab a specific word and replace
// 4. Command + z = undo

