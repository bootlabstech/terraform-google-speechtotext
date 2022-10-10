variable "project_id" {
  description = "The ID of project"
  type        = string
}
variable "display_name" {
  description = "The dispaly name of the agent"
  type        = string
}
variable "location" {
  description = "location"
  type        = string
}
variable "default_language_code" {
  description = "default language code for the agent."
  type        = string
  default     = "en"
}
