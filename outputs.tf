output "full_name" {
  value       = "${github_repository.new-repository.full_name}"
  description = "A string of the form orgname/reponame"
}

output "ssh_clone_url" {
  value       = "${github_repository.new-repository.ssh_clone_url}"
  description = "URL that can be provided to git clone to clone the repository via SSH"
}

output "http_clone_url" {
  value       = "${github_repository.new-repository.ssh_clone_url}"
  description = "URL that can be provided to git clone to clone the repository via HTTPS"
}

output "git_clone_url" {
  value       = "${github_repository.new-repository.git_clone_url}"
  description = "URL that can be provided to git clone to clone the repository anonymously via the git protocol"
}

output "svn_url" {
  value       = "${github_repository.new-repository.svn_url}"
  description = "URL that can be provided to svn checkout to check out the repository via Github's Subversion protocol emulation"
}
