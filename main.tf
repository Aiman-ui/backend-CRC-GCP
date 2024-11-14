provider "google" {
  project = "cloud-resume-project-439503 "
  region  = "us-east1"
}

resource "google_cloudfunctions_function" "visitor_counter" {
  name        = "VisitorCountFunc2"
  runtime     = "python311"
  entry_point = "visitor_counter"
  source_archive_bucket = "aiman-devops.site"
  source_archive_object = "cloud-resume-terraform.zip"
  trigger_http = true
}