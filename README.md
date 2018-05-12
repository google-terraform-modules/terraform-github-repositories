# Github Repository

Create repository on Github.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| repo | Relative informations of repository | map | - | yes |
| webhook | Relative informations of webhook repository | map | `<map>` | no |

## Outputs

| Name | Description |
|------|-------------|
| full_name | A string of the form orgname/reponame |
| git_clone_url | URL that can be provided to git clone to clone the repository anonymously via the git protocol |
| http_clone_url | URL that can be provided to git clone to clone the repository via HTTPS |
| ssh_clone_url | URL that can be provided to git clone to clone the repository via SSH |
| svn_url | URL that can be provided to svn checkout to check out the repository via Github's Subversion protocol emulation |

