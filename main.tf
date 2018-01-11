# just outputs a sample message, no resources are deployed

data "template_file" "test" {
  template = <<EOT
${var.sample_var}:
- ${var.terraform_tfvars_found},
- Schematics env ID is '${var.my_schematics_env_id}',
- Schematics env name is '${var.my_schematics_env_name}',
- user is '${var.my_user}',
- environment public ssh-key is: ${var.my_public_ssh_key}
### you would not print out the private key like this, of course, this is just a demo:
- environment private ssh-key is: ${var.my_private_ssh_key}
EOT
}

resource "null_resource" "troublemaker" {
  # causes a Terraform error if count > 0
  count = "${var.make_error}"
  provisioner "local-exec" {
    command = ""
  }
}
