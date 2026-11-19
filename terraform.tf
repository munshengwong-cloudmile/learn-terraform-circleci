# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MIT

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.21.0"
    }
  }

  backend "remote" {

    organization = "wongms-sandbox"

    workspaces {
      name = "learn-terraform-circleci"
    }
  }

  required_version = "~> 1.0.0"
}
