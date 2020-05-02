resource "aws_ecs_cluster" "main" {
  name = var.environment

  tags = {
    Name = var.environment
  }
}

