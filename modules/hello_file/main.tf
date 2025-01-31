resource "local_file" "hello" {
  content  = "Hello Terraform!"
  filename = "${path.module}/hello.txt"

  provisioner "local-exec" {
    command = "echo File created at $(date) >> creation.log"
  }
}