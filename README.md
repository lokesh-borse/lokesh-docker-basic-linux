# lokesh-docker-basic-linux

This repository contains a small Docker example that demonstrates basic Linux commands inside a container.

## Files
- `Dockerfile` — builds an Alpine-based image with a small bash script.
- `commands.sh` — script that runs basic Linux commands when the container starts.
- `README.md` — this file.
- `git_push_instructions.txt` — step-by-step Git & Docker commands you can run from Windows (no native Linux required).

---

## 1. Five DevOps Concepts

### 1. Continuous Integration (CI)
Developers frequently merge code to a shared repository. Automated builds and tests verify changes quickly.

### 2. Continuous Delivery (CD)
Automating releases so changes that pass tests can be deployed to production with minimal manual work.

### 3. Containerization
Packaging applications with their dependencies into containers (Docker) ensures consistent runtime environments.

### 4. Source Control (Git)
Version control system to track changes, collaborate, and manage branches and pull requests.

### 5. Infrastructure as Code (IaC)
Managing infrastructure (servers, networks) using code (Terraform, Ansible), enabling reproducibility and automation.

---

## 2. How I would complete this assignment (Windows-friendly)

Below are the commands I used to create, build, and push the project. If you do not have Linux on your system, you have multiple options:
- Install Docker Desktop for Windows (uses WSL2 or Hyper-V).
- Use GitHub web UI to create a repo and upload files.
- Use GitHub Codespaces or Gitpod (cloud dev environments) to run Docker and Git in the cloud.

### Create files (already done here)
```
# files present:
Dockerfile
commands.sh
README.md
git_push_instructions.txt
```

### Build the Docker image (Windows with Docker Desktop)
```
docker build -t lokesh-basic-linux:v1 .
docker run --rm lokesh-basic-linux:v1
```

### Tag & push to Docker Hub (replace <dockerhub-username>)
```
docker login
docker tag lokesh-basic-linux:v1 <dockerhub-username>/basic-linux:v1
docker push <dockerhub-username>/basic-linux:v1
```

### Git steps to push to GitHub
```
git init
git add .
git commit -m "Add Dockerfile, script and README"
# create a repo on GitHub named lokesh-docker-basic-linux (use web UI)
git remote add origin https://github.com/<your-username>/lokesh-docker-basic-linux.git
git branch -M main
git push -u origin main
```

If you prefer not to install Docker locally, you can:
1. Create a GitHub repo using the web UI and upload these files directly.
2. Use GitHub Actions to build the Docker image and push to Docker Hub automatically (CI).

---

## 3. How this helps you learn DevOps, Linux, Git, and Docker

- **Docker**: Writing Dockerfile, building images, running containers, tagging and pushing images.
- **Linux**: Practicing shell commands inside a container (pwd, ls, mkdir, cat, uname).
- **Git**: Initializing repositories, committing, pushing to remote GitHub repo.
- **DevOps**: Understanding the artifact flow — code in Git -> build container -> push image to registry (Docker Hub) -> deploy. This mirrors CI/CD pipelines in real projects.

---

## Notes for instructors / submission
- If multiple submissions are allowed, ensure your GitHub public repository URL is provided.
- Docker Hub image should be public for easy verification.
