resource "aws_instance" "web" {
    ami = var.ami_id
    instance_type = var.instance_type
    key_name = var.key
    
    tags = {
      Name = var.instance_name
    }
  
}
