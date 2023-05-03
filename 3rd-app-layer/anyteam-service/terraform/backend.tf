#backend 

terraform {
  backend "remote" {
    organization = "company"
    workspaces {
      name = "anyteam-service"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}
