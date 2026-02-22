resource "aws_instance" "app_server" {
  ami           = data.aws_ami.amiID.id 
  instance_type = "t3.micro"

  key_name = "FullStackKeys"

  vpc_security_group_ids = [aws_security_group.FullStackSG.id]

  tags = {
    Name = "flask-app-server"
  }
}