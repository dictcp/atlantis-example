resource "null_resource" "example" {
}

data "terraform_remote_state" "foo" {
  backend = "remote"

  config = {
    organization = "hk01"

    workspaces {
      name = "test workspace"
    }
  }
}
