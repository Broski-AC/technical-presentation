layout: true
class: cover
background-image: url(../../assets/images/backgrounds/HashiCorp-Content-bkg.png)
background-size: cover
name: bestpracticetwo.md

# Best Practices II

- **Use namespaces sparingly**: excessive granularity introduces operational overhead and possible storage issues
--

- **Codify through Terraform**: use the Vault Terraform module to manage your namespaces
--

- **Use `group_policy_application_mode`**: fetch secrets from multiple namespaces using Vault Agent

???

---
