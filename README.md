# external-secrets-gitops-example

## Test app to verify Vault and ExternalSecrets Operator (ESO) setup

The app mounts a secret from Vault (or another secret store) via ESO, and displays its
content.

The secrets are supposed to be used to establish a Database connection, but the app
is only displaying the content, no DB setup is attempted or required.

**Originally from:**

Github:

- <https://github.com/kostis-codefresh/external-secrets-gitops-example>

Medium Blog post:

- <https://codefresh.io/blog/gitops-secrets-with-argo-cd-hashicorp-vault-and-the-external-secret-operator/>
