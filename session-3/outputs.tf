output "first_ec2_ip" {
    value = aws_instance.first_ec2.public_ip
}

output "second_ec2_ip" {
    value = aws_instance.second_ec2.public_ip
}