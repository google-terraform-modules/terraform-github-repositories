resource "github_repository" "new-repository" {
  name               = "${var.repo["name"]}"
  description        = "${var.repo["description"]}"
  private            = "${lookup(var.repo, "private", false)}"
  auto_init          = "${lookup(var.repo, "auto_init", true)}"
  gitignore_template = "${var.repo["gitignore_template"]}"
  license_template   = "${var.repo["license"]}"
  homepage_url       = "${lookup(var.repo, "homepage_url", "")}"

  has_issues         = "${lookup(var.repo, "enable_issues", true)}"
  has_wiki           = "${lookup(var.repo, "enable_wiki", true)}"
  has_downloads      = "${lookup(var.repo, "enable_download", true)}"
  allow_merge_commit = "${lookup(var.repo, "enable_merge_commit", true)}"
  allow_squash_merge = "${lookup(var.repo, "enable_squash_merge", true)}"
  allow_rebase_merge = "${lookup(var.repo, "enable_rebase_merge", true)}"
}

resource "github_repository_webhook" "new-repository-webhook" {
  count      = "${length(var.webhook)}"
  repository = "${github_repository.new-repository.name}"
  name       = "${lookup(var.webhook[count.index], "name")}"

  configuration {
    url          = "${lookup(var.webhook[count.index], "url")}"
    content_type = "${lookup(var.webhook[count.index], "content_type")}"
    insecure_ssl = "${lookup(var.webhook[count.index], "insecure_ssl")}"
  }

  active = "${lookup(var.webhook[count.index], "enable", true)}"
  events = "${split(",", lookup(var.webhook[count.index], "events"))}"
}
