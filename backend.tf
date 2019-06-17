terraform {
  backend "remote" {
    hostname     = "jray-ptfe.hashidemos.io"
    organization = "sandbox"

    workspaces {
      name = "test-jenkins"
    }
  }
}