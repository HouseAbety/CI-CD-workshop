#set up aws ecr repo

resource "aws_ecr_repository" "this" {
  name                 = "anyteam-service"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }
}

output "ecr_repo" {
  value = aws_ecr_repository.this.repository_url
}
