terraform {
  backend "remote" {
    hostname     = "<TFE server name>"
    organization = "<target TFE org name>"

    workspaces {
      name = "<target workspace name>"
    }
  }
}