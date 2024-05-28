output "vpc_id" {
  value = aws_vpc.myvpc1.id
}
output "subnetid" {
    value = aws_subnet.publicsubnet.id
}