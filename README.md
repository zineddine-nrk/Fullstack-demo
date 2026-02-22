# 🚀 DevOps Mini Project – Flask | Docker | CI/CD | AWS EC2 | Terraform

Ce projet est une **petite application backend Flask** utilisée pour pratiquer des concepts DevOps :
containerisation, automatisation CI/CD , Terraform et déploiement cloud.

---

## 🛠️ Stack utilisée
- **Flask** → Backend simple
- **Docker** → Containerisation
- **GitHub Actions** → CI/CD (Build + Push Image + Deploy)
- **AWS EC2** → Déploiement

Infrastructure avec Terraform :
Terraform provisionne automatiquement EC2, le Security Group et la KeyPair.
Le state Terraform est stocké dans un backend S3 pour sécurité et collaboration.
Le déploiement des containers Docker (backend + frontend) est automatisé via CI/CD GitHub Actions.
---
1️⃣ Développeur push le code sur GitHub
2️⃣ GitHub Actions se déclenche automatiquement
3️⃣ Build de l’image Docker
4️⃣ Push de l’image vers Docker Hub
5️⃣ Connexion à AWS EC2 via SSH
6️⃣ Pull de l’image + déploiement automatique
---

▶️ Déploiement Manuel (avant CI/CD)
Installer Docker sur la VM

Pull & Run (test manuel)

docker pull zineddinen/backend_image
docker run -d -p 80:5000 --name backend zineddinen/backend_image
Accès :
http://VM_PUBLIC_IP
---

🤖 CI/CD – GitHub Actions
🔐 Secrets à configurer
Dans : Settings → Secrets → Actions
Ajouter :
DOCKERHUB_USERNAME = Ton username DockerHub
DOCKERHUB_TOKEN	= Access token DockerHub(Password)
VM_HOST	IP = publique de la VM
VM_USER	= ubuntu
VM_SSH_KEY_PRIVATE = Clé privée SSH

📌 Workflow utilisé
📁 .github/workflows/main.yml
✔️ Build
✔️ Push
✔️ Deploy + Restart auto

