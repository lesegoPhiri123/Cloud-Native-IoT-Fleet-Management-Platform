# Variables for GKE cluster name, project ID, region, and MongoDB Atlas credentials.
variable "project_id"{
  description = "The ID of the GDP project"
  type        = string
}

variable "region" {
  description = "the GDP region to deploy resources"
  type = string
  default = "us-central1"
}

variable "cluster_name" {
  description = "The name of the Kubernetes cluster"
  type = string
  default = "iot-fleet-cluster"
}