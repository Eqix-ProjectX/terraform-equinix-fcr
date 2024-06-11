terraform {
  required_providers {
    equinix = {
      source  = "equinix/equinix"
      version = "1.36.4"
    }
  }
}

resource "equinix_fabric_cloud_router" "new_cloud_router" {
  name = var.name
  type = "XF_ROUTER"
  notifications {
    type   = "ALL"
    emails = [var.email]
  }
  order {
    purchase_order_number = var.purchase_order_number
  }
  location {
    metro_code = var.location
  }
  package {
    code = "STANDARD"
  }
  project {
    project_id = var.project_id
  }
  account {
    account_number = var.account_number
  }
}