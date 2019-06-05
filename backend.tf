terraform {
  backend "remote" {
    hostname     = "jray-ptfe.hashidemos.io"
    organization = "GLIC"

    workspaces {
      name = "test-case-1"
    }
  }
}
