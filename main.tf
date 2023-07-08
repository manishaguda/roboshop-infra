resources "null_resource" "test" {
  provisioner "local-exec" {
    command = "echo ${vars.env}"
  }
}