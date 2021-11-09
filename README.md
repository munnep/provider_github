# Using terraform for Github

This repository shows an example on how to use the Github provider for terraform to create a repository

[Github provider documentation](https://registry.terraform.io/providers/integrations/github/latest/docs)

# Prerequisites

## Install terraform  
See the following documentation [How to install Terraform](https://learn.hashicorp.com/tutorials/terraform/install-cli)

## OAuth token for Github
See the following documentation. [OAuth Access](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/creating-a-personal-access-token) 

# How to

1. Clone the repository to your local machine
```
git clone https://github.com/munnep/provider_github.git
```
2. Change your directory
```
cd provider_github
```
3. Create a file called ```examples.auto.tfvars``` and add the following content
```
token            = "<your github token>"
repo_name        = "example_github_provider"
repo_description = "Example of using terraform to create this public repository"
```
4. Terraform initialize
```
terraform init
```
5. Terraform plan
```
terraform plan
```
6. Terraform apply
```
terraform apply
```
7. Sample output
```
...
...
...
Terraform will perform the following actions:

  # github_repository.example will be created
  + resource "github_repository" "example" {
      + allow_auto_merge       = false
      + allow_merge_commit     = true
...
...
...
```
8. Destroy the repository you just created
```
terraform destroy
```