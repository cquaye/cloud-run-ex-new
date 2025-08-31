# core variables

variable "project_id" {
    type = string
    default = "*"
}

variable "creds" {
    type = string
    default = "*"
}


variable "region" {
    type = string
    default = "us-central1"
  
}


# app container
variable "image" {
    type = string
    default = "us-central1-docker.pkg.dev/dusty-class-6-5-carlton-quaye/cloud-run-ex-new/test:latest"
  
}

# revision names

variable "color" {
    type = string
    default = "red"  # colors to change for revisions: red, blue, gree, orange, and maybe silver
}


# cloud build

variable "github_owner" {
    type = string
    default = "cquaye"
  
}


variable "github_url" {
    type = string
    default = "https://github.com/cquaye/cloud-run-ex-new/"
  
}
variable "repo_branch" {
    type = string
    default = "refs/heads/cloudrun-deploy"
  
}

variable "github_repo" {
    type = string
    default = "cloud-run-ex-new"
  
}
variable "builder_image" {
    type = string
    default = "gcr.io/cloud-builders/docker"
  
}

variable "branch" {
    type = string
    default = "cloudrun-deploy"
  
}





/*
variable "image" {
    type = string
    default = "gcr.io/google-samples/hello-app:1.0"
  
}*/

/*
variable "image" {
  type = string
  default = "gcr.io/dusty-class-6-5-carlton-quaye/cloud-run-ex-new:latest"
}
*/