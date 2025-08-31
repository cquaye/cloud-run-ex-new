
# create artifact to store container for build
#https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/artifact_registry_repository

resource "google_artifact_registry_repository" "docker_repo" {
    provider = google
    project = var.project_id
    location = var.region
    repository_id = var.github_repo
    format = "Docker"
  
}

