layout: true
class: compact, col-2
background-image: url(../../assets/images/backgrounds/HashiCorp-Content-bkg.png)
background-size: cover
name: namespace_def

# Introducing Namespaces!

> A Vault Enterprise feature that enables organizations to create "mini-Vaults" inside their larger installation

> Provides tenant isolation and administrative delegation


Contains:
- Policies
- Auth methods
- Secret engines
- Tokens
- Identity entities and groups

???

Namespaces help companies like yours provide their developers with the ability to manage secrets in a self serving manner. Not only can you segment resources out based on environments, teams, or whatever factors underline your organizational structure, you can also apply a hierarchical structure, apply rate limits, and ensure resource quotas are in place per namespace.

You can configure all of the items a namespace contains into distinct instances. 

Tokens are locked to a namespace; groups can pull in entities and groups from other namespaces

By following some of the best practices I'll outline in the next few slides, you'll gain the confidence to use this feature across your organization, providing some much needed relief to your teams

---
