# tf-no-resources-statefile

**NOTE: this version of tf-no-resources contains a Terrafrom state file for test!**
(btw, the key pair in the statefile is generated and irrelavant, thus it can be published)

A Terraform configuration that just outputs a message for simple tests, no resources are created:
- the standard Terraform variable file ```terraform.tfvars``` is defined to show that values defined there are
  considered as expected
- variable _my_schematics_env_name_ can be used to test the placeholder ```$SCHEMATICS.ENV```, find more details in [vars.tf](https://github.ibm.com/schematicsexamples/tf-no-resources/blob/master/vars.tf) and [here](https://github.ibm.com/blueprint/blueprint-workers#special-variables-and-placeholders-for-schematics-environments)
  (for testing, assign _my_schematics_env_name_ to the value ```$SCHEMATICS.ENV``` in the variable definition
  of the Schematics environment)
- variable _my_user_ can be used to test the placeholder ```$SCHEMATICS.USER```

- variable _my_public_ssh_key_ can be used to test ```$SCHEMATICS.SSHKEYPUBPLIC```
- variable _my_private_ssh_key_ can be used to test ```$SCHEMATICS.SSHKEYPRIVATE```
- for test: define variable _make_error_ to a value larger than zero to enforce a Terraform error

The placeholders above reflect the latest development state but might not yet be supported by the Schematics service on
Bluemix stage or production. In other words, if you use a placeholder in your Schematics environment variable
assignments that is not yet supported then it will not be substituted with the described value.
