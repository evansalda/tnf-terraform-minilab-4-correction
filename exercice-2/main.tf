variable "environnement" {}

resource "aws_instance" "serveur_web" {
  count         = var.environnement == "prd" ? 4 : 2
  ami           = "ami-0f82b13d37cd1e8cc"
  instance_type = var.environnement == "prd" ? "t2.small" : "t2.micro"
  subnet_id     = "subnet-02ed6f109520bdac1"

  tags = {
    Name = "nuumfactory-ec2-conditions-XX"
  }
}