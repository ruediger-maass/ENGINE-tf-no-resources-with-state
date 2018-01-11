variable "sample_var" {
  description = "A sample var to pass to the template."
  default     = "Hello"
}

variable "terraform_tfvars_found" {
  description = "Another sample var to pass to the template. Changed to a success message by terraform.tfvars."
  default     = "terraform.tfvars not found :-("
}

variable "make_error" {
  description = "set to a value > 0 to enforce a Terraform error (for test)"
  default = 0
}

variable "my_schematics_env_id" {
  description = <<EOT
ID of the Schematics environment.
The placeholder "$SCHEMATICS.ENVID" can be used as value in the variable definitions for the Schematics environment
to refer to the ID of the current environment. Schematics detects the placeholder and passes the current Schematics environment
name as value to the schematics.tfvars file. Please note that the placeholder is only handled this way by Schematics.
EOT
  default = "unknown"
}

variable "my_schematics_env_name" {
  description = <<EOT
Name of the Schematics environment.
Instead of hard-coding the name, the placeholder "$SCHEMATICS.ENV" can be used as value in the variable definitions
for the Schematics environment. Schematics detects the placeholder and passes the current Schematics environment
name as value to the schematics.tfvars file. Please note that the placeholder is only handled this way by Schematics.
EOT
  default = "unknown"
}

variable "my_user" {
  description = <<EOT
Name of the user who runs the request.
The placeholder "$SCHEMATICS.USER" can be used as value in the variable definitions for the Schematics environment.
Schematics detects the placeholder and passes the current user name as value to the schematics.tfvars file.
Please note that the placeholder is only handled this way by Schematics.
EOT
  default = "unknown"
}

variable "my_public_ssh_key" {
  description = <<EOT
The public key part of the SSH key pair that is created by Schematics for each environment.
The placeholder "$SCHEMATICS.SSHKEYPUBLIC" can be used as value in the variable definitions for the Schematics environment.
Schematics detects the placeholder and passes the current user name as value to the schematics.tfvars file.
Please note that the placeholder is only handled this way by Schematics.
EOT
  default = "unknown"
}

variable "my_private_ssh_key" {
  description = <<EOT
The private key part of the SSH key pair that is created by Schematics for each environment.
The placeholder "$SCHEMATICS.SSHKEYPRIVATE" can be used as value in the variable definitions for the Schematics environment.
Schematics detects the placeholder and passes the current user name as value to the schematics.tfvars file.
Please note that the placeholder is only handled this way by Schematics.
EOT
  default = "unknown"
}
