#building cloud run
#https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/cloud_run_service
# red deployment 100 percent split

resource "google_cloud_run_service" "cloudapp" {
    name = "cloudrun-007"
    location = var.region

    template {
      spec {
        containers {
          image = var.image
          env {
            name = "COLOR"
            value = var.color
          }
        }
      }
    }

    traffic {
      percent = 40
      revision_name = "cloudrun-007-00004-xj8"
    }

    traffic {
      percent = 10
      revision_name = "cloudrun-007-00003-hts"
    }
    traffic {
      percent = 10
      revision_name = "cloudrun-007-00002-2b2"
    }

    traffic {
      percent = 40
      revision_name = "cloudrun-007-00001-cxg"
    }
    
    /*
     traffic {
      percent = 100
      latest_revision = true
      }
      */
      

   
}

# make app plublic

resource "google_cloud_run_service_iam_member" "member" {
location = google_cloud_run_service.cloudapp.location
project = google_cloud_run_service.cloudapp.project
service = google_cloud_run_service.cloudapp.name
role = "roles/run.invoker"
member = "allUsers"
  
}

