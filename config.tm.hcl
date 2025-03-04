globals "terraform" {
  version = "1.7.5"
}

globals "terraform" "backend" {
  bucket         = "terramate-example-terraform-state-backend"
  dyanmodb_table = "terraform-lock"
  region         = "us-east-1"
}

globals "aws" "oidc" {
  github_repositories = [
    "terramate-io/terramate-quickstart-aws",
    # "another-org/another-repo:ref:refs/heads/main",
  ]
}

globals "terraform" "providers" "aws" {
  enabled = true
  source  = "hashicorp/aws"
  version = "~> 5.31"
  config = {
    region = "us-east-1"
  }
}
