resource "aws_iam_role" "ecs_execution_role" {
  name = "ecsTaskExecutionRole"
  assume_role_policy = file(
    format("%s/policies/ecs-task-execution-role.json", path.module),
  )
}

# Cluster Execution Policy
resource "aws_iam_role_policy" "ecs_execution_role_policy" {
  name = "ecsTaskExecutionPolicy"
  policy = file(
    format("%s/policies/ecs-execution-role-policy.json", path.module),
  )
  role = aws_iam_role.ecs_execution_role.id
}

