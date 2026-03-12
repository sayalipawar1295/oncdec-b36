--

## 1. Start a Kubernetes Environment

```bash
kubectl get nodes
```
---

# 2. Deploy a Sample Application


```bash
kubectl create deployment hpa-demo --image=nginx
```

Now add CPU requests/limits.

```bash
kubectl edit deployment hpa-demo
```

Add this inside the container spec:

```yaml
resources:
  requests:
    cpu: 100m
  limits:
    cpu: 200m
```

Save and exit.

Check deployment:

```bash
kubectl get pods
```

---

# 3. Install Metrics Server

HPA needs **metrics-server** to read CPU usage.

Run:

```bash
kubectl apply -f https://github.com/kubernetes-sigs/metrics-server/releases/latest/download/components.yaml
```


```bash
kubectl edit deployment metrics-server -n kube-system
```

Add this argument:

```
--kubelet-insecure-tls
```

Verify metrics:

```bash
kubectl top nodes
kubectl top pods
```

If you see CPU usage → metrics-server works.

---

# 4. Create Horizontal Pod Autoscaler

```bash
kubectl autoscale deployment hpa-demo --cpu-percent=50 --min=1 --max=10
```

Check HPA:

```bash
kubectl get hpa
```

Example output:

```
NAME       REFERENCE             TARGETS   MINPODS   MAXPODS
hpa-demo   Deployment/hpa-demo   10%/50%   1         10
```

---

# 5. Generate Load

We create a pod that sends traffic continuously.

```bash
kubectl run -it --rm load-generator --image=busybox /bin/sh
```

Inside the container run:

```bash
while true; do wget -q -O- http://hpa-demo; done
```

---

# 6. Watch Auto Scaling

In another terminal:

```bash
kubectl get hpa -w
```

or

```bash
kubectl get pods -w
```

---


