resource "aws_instance" "webserver" {
  # Amazon Linux 2 AMI (HVM), SSD Volume Type (64-bit x86)
  #ami                    = "ami-015a6758451df3cb9"
  # Ubuntu 18.04
  ami                     = "ami-0c8e97a27be37adfd"
  instance_type          = "t2.micro"
  key_name               = aws_key_pair.base_key_pair.key_name
  vpc_security_group_ids = ["${aws_security_group.base_allow_default.id}"]

  tags    = { 
    Name  = "webserver"
    OS    = "Ubuntu 18.04"
  }
}

resource "aws_instance" "non_webserver" {
  # Amazon Linux 2 AMI (HVM), SSD Volume Type (64-bit x86)
  #ami                    = "ami-015a6758451df3cb9"
  # Ubuntu 18.04
  ami                     = "ami-0c8e97a27be37adfd"
  instance_type          = "t2.micro"
  key_name               = aws_key_pair.base_key_pair.key_name
  vpc_security_group_ids = ["${aws_security_group.base_allow_default.id}"]

  tags    = { 
    Name  = "non-webserver"
    OS    = "Ubuntu 18.04"
  }
}
