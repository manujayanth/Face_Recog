provider "aws" {
region = "us-east-1"
access_key = ""
secret_key = ""

}

resource "aws_volume_attachment" "ebs_att" {
  device_name = "/dev/sdh"
  volume_id   = aws_ebs_volume.example.id
  instance_id = aws_instance.web.id
}

resource "aws_instance" "web" {
  ami               = "ami-0b0af3577fe5e3532"
  availability_zone = "us-east-1a"
  instance_type     = "t2.micro"

  tags = {
    Name = "Face Recognized EC2 instance"
  }
}

resource "aws_ebs_volume" "example" {
  availability_zone = "us-east-1a"
  size              = 5

 tags = {
    Name = "Face Recognized EBS Volume of 5 GB"
  }
}
