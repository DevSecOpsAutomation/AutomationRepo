provider "aws" {
  region = "us-west-1"
}

resource "aws_security_group" "Scenario11" {
  name        = "Scenario11"
  description = "egress"
  vpc_id      = "vpc-481b202f"

  egress {
    from_port   = 445
    to_port     = 593
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 135
    to_port     = 135
    protocol    = "udp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name = "SG with port range(UDP and TCP) and all IP."
  }
}



