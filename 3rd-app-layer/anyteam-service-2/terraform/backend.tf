#backend 

terraform {
  backend "remote" {
    organization = "company"
    workspaces {
      name = "anyteam-service-2"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}
