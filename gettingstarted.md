layout: true
class: compact
background-image: url(../../assets/images/backgrounds/HashiCorp-Content-bkg.png)
background-size: cover
name: gettingstarted

# How to Get Started

Parent namespace creation via Terraform

```terraform
resource "vault_namespace" "animal_shelter" {
    path = "animal_shelter"
}
```

Child namespace creation via Terraform

```terraform
resource "vault_namespace" "dogs" {
    namespace = vault_namespace.animal_shelter.path
    path = "dogs"
}
```


???

We recommend using Terraform in order to get started, as it can help you codify your architecture and enable easier automation for spinning up namespaces. 

What's happening here is that you're creating a namespace called "animal_shelter" at the root level of Vault. If you're using HCP Vault, there's an actual "root" namespace that is distinct from what we're talking about here, but that's covered in a later discussion.

You're then creating a child namespace - one nested within "animal_shelter" - called "dogs". And so maybe this space is specifically for the team that manages man's best friend, versus those who take care of the cats.

Children can inherit elements from their parent namespaces, like policies, entities, or groups.

Parents can also assert policies on identities within a child namespace

--- 
