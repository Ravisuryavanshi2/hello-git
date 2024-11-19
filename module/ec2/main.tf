resource "aws_instance" "web" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key
  tags = {
    Name = var.instance_name
  }

 
  vpc_security_group_ids = [var.security_group_id]

 
  connection {
    type        = "ssh"
    user        = "ubuntu"
    private_key = file("C:/Users/micro/Downloads/hello.pem")
    host        = self.public_ip
    timeout     = "2m"  # Wait for 2 minutes for the instance to be accessible
  }

  # Provisioner to install Apache
  provisioner "remote-exec" {
    inline = [
      "sudo apt update -y",                 
      "sudo apt install apache2 -y",         
      "sudo systemctl enable apache2",        
      "sudo systemctl start apache2"          
    ]
  }
}


