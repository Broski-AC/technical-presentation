layout: true
class: cover
background-image: url(../../assets/images/backgrounds/HashiCorp-Content-bkg.png)
background-size: cover
name: bestpractice.md

# Best Practices I

- **Plan before implementing**: consider storage constraint and organizational requirements
<br></br>
--

- **Time everything**: the number of namespaces impact Vault functionality 
<br></br>
--

- **Leverage identity management**: map entities to multiple auth methods and groups
<br></br>

???

Plan before -> There are a list of questions on the Hashi website to ask yourself before starting. Know your naming conventions; think about how you want to organize your namespaces, and how many you'll even need

Time everything -> As the number of namespaces increases, so too do Vault unsealing and leadership transfer times increase. With even ten namespaces, it will take Vault 5 seconds to unseal

Leverage id -> Make use of ACL templates; dynamic policies are more flexible than static versions, and can simplify the overall policy; Map entities to multiple auth methods and assign them to groups

---
