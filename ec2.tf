resource "aws_instance" "web" {
  ami           = "ami-0fa1ca9559f1892ec"
  instance_type = "t2.micro"
  key_name = "host"
  subnet_id = aws_subnet.public-subnet[count.index].id
  vpc_security_group_ids = [aws_security_group.allow_tls.id]
  associate_public_ip_address = true
  count = 2

  tags = {
    Name = "webserver"
  }

  provisioner "file" {
    source = "./host.pem"
    destination = "/home/ec2-user/host.pem"
  
    connection {
      type = "ssh"
      host = self.public_ip
      user = "ec2-user"
      private_key = "${file("./host.pem")}"
    }  
  }
}

resource "aws_instance" "db" {
  ami           = "ami-0fa1ca9559f1892ec"
  instance_type = "t2.micro"
  key_name = "host"
  subnet_id = aws_subnet.private-subnet.id
  vpc_security_group_ids = [aws_security_group.allow_tls_db.id]

  tags = {
    Name = "DB Server"
  }
}