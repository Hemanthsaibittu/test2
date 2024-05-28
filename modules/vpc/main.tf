
resource "aws_vpc" "myvpc1" {
    cidr_block = var.ipno
  
}
resource "aws_subnet" "publicsubnet" {
    vpc_id = aws_vpc.myvpc1.id
    cidr_block = var.ipno1
  
}
resource "aws_subnet" "privatesubnet" {
    vpc_id = aws_vpc.myvpc1.id
    cidr_block = var.ipno2
  
}
resource "aws_internet_gateway" "myigw" {
    vpc_id = aws_vpc.myvpc1.id
    
}
resource "aws_route_table" "publicRT" {
    vpc_id = aws_vpc.myvpc1.id
    route {
        cidr_block = var.ipno3
        gateway_id = aws_internet_gateway.myigw.id
    }
  
}
resource "aws_route_table_association" "pubicrtassociation" {
    subnet_id = aws_subnet.publicsubnet.id
    route_table_id = aws_route_table.publicRT.id
  
}
resource "aws_security_group" "mysg" {
    vpc_id = aws_vpc.myvpc1.id
  
    ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [var.ipno3]
    }
    egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = [var.ipno3]
    }
}