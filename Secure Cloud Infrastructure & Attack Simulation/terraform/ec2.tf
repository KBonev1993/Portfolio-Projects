resource "aws_instance" "sec_lab_instance" {
  ami           = "ami-12345678"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.public.id
  vpc_security_group_ids = [aws_security_group.sec_lab_sg.id]

  tags = {
    Name = "sec-lab-instance"
  }
}

