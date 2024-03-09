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

???

Use namespaces -> Ask if an organizational unit needs to directly manage its own policies; See if you can provide a self-service capability by implementing an onboarding layer; Review the maximum number of namespaces allowed by the storage entry size; the amount of memory recommended is (435 x N) KB memory

Codify -> Use Vault terraform modules, located in the Terraform Registry to enable easy creation and maintenance of namespaces. You can have repeatable infrastructure, and full insight into any changes through Terraform plans/applies; Also works seamlessly w/ the various cloud providers you might be using in conjunction with Vault.

---
