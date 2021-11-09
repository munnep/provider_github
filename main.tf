resource "github_repository" "example" {
  name        = var.repo_name
  description = var.repo_description

  visibility = "public"
}