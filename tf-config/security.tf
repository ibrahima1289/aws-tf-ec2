# Security groups
resource "aws_security_group" "ec2-server-sg" {
  name        = "server-sg"
  description = "Allow incoming traffic to EC2"
  vpc_id      = aws_vpc.main_vpc.id

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    description = "Allow HTTP Traffic"
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    description = "Allow SSH connections"
  }

  ingress {
    description = "Allow HTTPS Traffic"
    from_port   = 443
    to_port     = 443
    protocol    = "TCP"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "Allow 8080 Traffic"
    from_port   = 8080
    to_port     = 8080
    protocol    = "TCP"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "Allow RDP Traffic"
    from_port   = 3389
    to_port     = 3389
    protocol    = "TCP"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 5000
    to_port     = 5001
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    description = "Allow 3CX Management Port"
  }

  ingress {
    from_port   = 5015
    to_port     = 5015
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    description = "Allow 3CX Setup port (HTTP)"
  }

  ingress {
    from_port   = 5060
    to_port     = 5060
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    description = "Allow SIP protocol on TCP"
  }

  ingress {
    from_port   = 5060
    to_port     = 5060
    protocol    = "udp"
    cidr_blocks = ["0.0.0.0/0"]
    description = "Allow SIP protocol on UDP"
  }

  ingress {
    from_port   = 5061
    to_port     = 5061
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    description = "Allow secure SIP protocol on TCP"
  }

  ingress {
    from_port   = 5090
    to_port     = 5090
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    description = "Allow 3CX Tunnel on TCP"
  }
  ingress {
    from_port   = 5090
    to_port     = 5090
    protocol    = "udp"
    cidr_blocks = ["0.0.0.0/0"]
    description = "Allow 3CX Tunnel on UDP"
  }

  ingress {
    from_port   = 9000
    to_port     = 10999
    protocol    = "udp"
    cidr_blocks = ["0.0.0.0/0"]
    description = "Allow 3CX Media Server (RTP)"
  }
  ingress {
    from_port   = -1
    to_port     = -1
    protocol    = "icmp"
    cidr_blocks = ["0.0.0.0/0"]
    description = "Allow Pinging (ICMP)"
  }

  ingress {
    from_port   = 500
    to_port     = 500
    protocol    = "udp"
    cidr_blocks = ["0.0.0.0/0"]
    description = "Allow IPSec Port for strongSwan (IKE)"
  }
  ingress {
    from_port   = 4500
    to_port     = 4500
    protocol    = "udp"
    cidr_blocks = ["0.0.0.0/0"]
    description = "Allow IPSec Port for strongSwan"
  }

  ingress {
    from_port   = -1
    to_port     = -1
    protocol    = "50"
    cidr_blocks = ["0.0.0.0/0"]
    description = "Allow IPSec Port for strongSwan (ESP)"
  }

  ingress {
    from_port   = -1
    to_port     = -1
    protocol    = "51"
    cidr_blocks = ["0.0.0.0/0"]
    description = "Allow IPSec Port for strongSwan (AH)"
  }

  ingress {
    from_port   = 9000
    to_port     = 9000
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    description = "Allow Access to Portainer Dashboard"
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
    description = "Allow All Outgoing Traffic"
  }
}
