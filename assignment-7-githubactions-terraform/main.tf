resource "aws_security_group" "githubactions_sg" {

  name        = "githubactions-sg-jenkins"
  description = "Allow SSH access"

  ingress {

    description = "SSH"

    from_port   = 22
    to_port     = 22

    protocol    = "tcp"

    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {

    from_port   = 0
    to_port     = 0

    protocol    = "-1"

    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {

    Name = "githubactions-sg"
  }
}

resource "aws_iam_role" "ssm_role" {

  name = "githubactions-ssm-role-jenkins"

  assume_role_policy = jsonencode({

    Version = "2012-10-17"

    Statement = [

      {
        Action = "sts:AssumeRole"

        Effect = "Allow"

        Principal = {
          Service = "ec2.amazonaws.com"
        }
      }
    ]
  })
}

resource "aws_iam_role_policy_attachment" "ssm_policy" {

  role       = aws_iam_role.ssm_role.name

  policy_arn = "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore"
}

resource "aws_iam_instance_profile" "ssm_profile" {

  name = "githubactions-ssm-profile-jenkins"

  role = aws_iam_role.ssm_role.name
}

resource "aws_instance" "githubactions_server" {

  ami           = "ami-0c02fb55956c7d316"

  instance_type = "t2.micro"

  vpc_security_group_ids = [
    aws_security_group.githubactions_sg.id
  ]

  iam_instance_profile = aws_iam_instance_profile.ssm_profile.name

  tags = {

    Name = "GitHubActionsServer"
  }
}