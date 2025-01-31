# backend.tf
terraform {
  backend "local" {
    path = "terraform.tfstate"  # Explicit local state path
  }
}