layout: true
class: fit-h1, col-2
background-image: url(../../assets/images/backgrounds/HashiCorp-Content-bkg.png)
background-size: cover
name: pros_and_cons

# What are some Pros and Cons of Namepsaces?

Pros
* Environmental and team-based segmentation
* Resource isolation
* Apply granular rate limits and resource quotas
* Hierarchy system

Cons
* Increased memory usage 
* Deliberate namespace targetting
* Unintended resource alterations

???

Pros: 
* Teams and environments can have their own namespaces, which they can manage on their own. No more gate-keeping by one specific Vault owning team.

* Resources are isolated to a namespace, so you can have simplier names and even duplicate names across the spaces

* You can apply rate limites and resource quotas to specific namespaces, meaning if one team is causing trouble, only they will be impacted

* You can nest namespaces, creating parent and child namespaces

Cons:
* Each namespace must have at least two secret engine mounts, one secret engine, and one auth engine mount
* You must be conscious of targetting your specific namespace while doing work, otherwise you may edit the root/parent namespace or find your applications not working whatsoever. However, this can be simplified with some terraform modules that automate the assignment
* If you use the same names across namespaces, you might unintentially target a resource in another namespace and alter its properties if you don't specify the namespace correctly. 

---