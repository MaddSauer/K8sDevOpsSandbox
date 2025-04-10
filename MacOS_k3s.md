# Local K3s Setup on macOS with k3d and Colima
This guide helps you set up a local K3s cluster on your MacBook (ARM64) using **k3d** and **Colima** instead of Docker Desktop.

---

## Why this setup?
| Feature             | Reason                                                                 |
|---------------------|------------------------------------------------------------------------|
| Lightweight          | Lower RAM/CPU usage than Docker Desktop                               |
| Open Source          | Colima and k3d are both fully open-source                             |
| Privacy-friendly     | No telemetry, GDPR-compliant                                           |
| Compatible with ARM  | Runs smoothly on M1/M2 MacBooks                                       |
---

## Prerequisites
- macOS (ARM64 or Intel)
- Homebrew installed (`brew --version`)
---

## Step-by-Step Installation
### 1. Remove Docker Desktop (optional but recommended)
```bash
/Applications/Docker.app/Contents/MacOS/Docker --uninstall
rm -rf ~/.docker /Applications/Docker.app
```
---

### 2. Install Colima (Open Source Docker alternative)
```bash
brew install colima
colima start
```

You can check its status with:
```bash
colima status
```
---

### 3. Install k3d (K3s in Docker containers)
```bash
brew install k3d
```
---

### 4. Create your first K3s cluster
```bash
k3d cluster create mycluster
```

This creates a local cluster with:
- 1 server (control plane)
- 1 load balancer
- Default settings
---

### 5. Verify your cluster

```bash
kubectl cluster-info
kubectl get nodes
```

You should see the K3s node up and ready.
---

### 6. Optional: Enable VS Code Kubernetes Tools

Install these extensions:
- Kubernetes
- Remote - Containers
- Dev Containers

---

## Next Steps
- Use this for DevPod, ArgoCD, or local experiments
- Combine with local GitOps and Observability testing
- You can delete the cluster with:

```bash
k3d cluster delete mycluster
```

---

_Last updated: April 2025_ 
