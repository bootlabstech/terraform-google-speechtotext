resource "google_project_service" "speechtotext" {
  project = var.project_id 
  service = "speech.googleapis.com"
}
resource "google_project_service" "dialogflow" {
  project = var.project_id 
  service = "dialogflow.googleapis.com"
}
resource "google_dialogflow_cx_agent" "full_agent" {
  depends_on = [google_project_service.dialogflow]
  project   = var.project_id  
  display_name = var.display_name
  location = var.location
  default_language_code = var.default_language_code
  supported_language_codes = ["fr","de","es"]
  time_zone = "India/Kolkata"
  description = "dialogflow_cx_agent for the project"
  enable_stackdriver_logging = true
  enable_spell_correction    = true
    speech_to_text_settings {
        enable_speech_adaptation = true
    }
}
