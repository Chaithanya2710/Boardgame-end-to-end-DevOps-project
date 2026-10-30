resource "aws_instance" "instance" {
  ami           = "ami-0c7632fb77f35db43"
  instance_type = "c7i-flex.large"
  count = 4 
  key_name = aws_key_pair.key-pair.key_name

  root_block_device{
    delete_on_termination = true
    volume_size = 20
    volume_type = "gp3"
  }

  tags = {
    Name = "-"
  }
}
resource "aws_key_pair" "key-pair" {
  key_name   = "deployer-key"
  public_key = file("boardgame-project.pub")
}