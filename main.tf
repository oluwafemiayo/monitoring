provider "local" {}

resource "null_resource" "example" {
  provisioner "local-exec" {
    command = "echo 'Hello, this is a simple null resource!'"
  }

  triggers = {
    always_run = "${timestamp()}"
  }
}
