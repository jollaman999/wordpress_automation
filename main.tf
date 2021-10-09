resource "aws_instance" "my_instance" {
  ami                    = data.aws_ami.ubuntu.image_id
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.my_sg_web.id]

  user_data = file("./ansible_pull.sh")

  tags = local.common_tags
}

resource "aws_eip" "my_eip" {
  vpc      = true
  instance = aws_instance.my_instance.id
}

