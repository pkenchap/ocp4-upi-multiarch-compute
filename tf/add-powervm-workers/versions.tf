################################################################
# Copyright 2023 - IBM Corporation. All rights reserved
# SPDX-License-Identifier: Apache-2.0
################################################################

terraform {
  required_providers {
    null = {
      source  = "hashicorp/null"
      version = "~> 3.2.1"
    }
    time = {
      source  = "hashicorp/time"
      version = "0.9.1"
    }
    openstack = {
      source  = "terraform-provider-openstack/openstack"
      version = "~> 1.32"
    }
    ibm = {
      source                = "IBM-Cloud/ibm"
      version               = "~> 1.62.0"
      configuration_aliases = [ibm]
    }
    http = {
      source  = "hashicorp/http"
      version = "3.4.0"
    }
  }
  required_version = ">= 1.5.0"
}


