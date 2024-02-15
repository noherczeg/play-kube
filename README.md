# Play Kube

Me playing with Kubernetes.

## Warning

At the time of writing, Docker v25 had issues, and minikube couldn't load images.

The solution was to downgrade to Docker v24:

List versions:

```bash
apt-cache madison docker-ce | awk '{ print $3 }'
````

E.g.: `5:24.0.9-1~ubuntu.22.04~jammy`

Unintall old versions:

```bash
for pkg in docker.io docker-doc docker-compose docker-compose-v2 podman-docker containerd runc; do sudo apt-get remove $pkg; done
```

Install specific version:

```bash
VERSION_STRING=5:24.0.9-1~ubuntu.22.04~jammy \
sudo apt-get install docker-ce=$VERSION_STRING docker-ce-cli=$VERSION_STRING containerd.io docker-buildx-plugin docker-compose-plugin
```

## Setup

### Obtain minikube

```bash
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube_latest_amd64.deb
```

### Install

```bash
sudo dpkg -i minikube_latest_amd64.deb
```

### Install kubectl

```bash
sudo snap install kubectl --classic
```

### Start cluster

```bash
minikube start
```

## CLI commands

**Get info:**

- Get cluster info: `kubectl get po -A`
- Get pods: `kubectl get pods`
- List Services (e.g. to debug dns issues): `kubectl get svc`
- List Persistent Volume Claims: `kubectl get pvc`

**Image loading and info:**

- List available minikube images: `minikube image ls --format table`
- Load local image outside from minikube: `minikube image load play-kube-app:1.0.0`

**Deployment:**

- Apply all configurations in folder: `kubectl apply -f k8s`
- Delete deployments: `kubectl delete -f k8s`
- Delete a specific PVC: `kubectl delete pvc <pvc-name>`

**Logs and debugging:**

- Debug pod: `kubectl get pod play-kube-app-8cf6674f5-24gdl -o yaml`
- Get pod logs(feed): `kubectl logs -f play-kube-app-5746f65986-9nzzp`

## Application

### Build Image

```bash
docker build -t play-kube-app:1.0.0 ./application
```

### Compose

```bash
docker compose -f ./application/docker-compose.yaml up --build
```

### Endpoints

- `/`: entrypoint
- `/users`: list of users
- `/service/seed`: endpoint to seed the users table with random data
- `/service/health`: health check endpoint
- `/service/kill`: kill the instance

## Accessing Load-balanced apps:

"In Minikube, when you create a LoadBalancer service, it simulates a LoadBalancer using a NodePort service and provides an external IP address that routes traffic to the NodePort on one of the Minikube nodes."

To get the ip of minikube run:

```bash
minikube ip
```

To get which port did minikube map our services run (and search for `3000`):

```bash
kubectl get svc
```

Therefore for example if we are expecting our app to be available at `localhost:3000`, in
my case it ended up being `192.168.49.2:32579`

## Manual backup and restore

**Backup:**

Log into the pod:

```bash
kubectl exec -it play-kube-postgres-0 -- /bin/bash
```

Create backup:

```bash
cd /opt \
pg_dump -U <username> <database-name> > backup.sql
```

Extract backup from pod:

```bash
kubectl cp play-kube-postgres-0:/opt/backup.sql ./backup.sql
```

## Sources

- https://minikube.sigs.k8s.io/docs/start/
- https://dzone.com/articles/crafting-database-models-with-knexjs-and-postgresq
