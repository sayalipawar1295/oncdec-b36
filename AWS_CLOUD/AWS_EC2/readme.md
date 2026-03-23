
## 📌 What is EC2?

Amazon EC2 (Elastic Compute Cloud) is a service that provides virtual servers in the cloud.

Instead of buying physical servers, we can launch and manage servers on AWS within minutes.

### 🔹 Key Points:
- Scalable compute service
- Pay-as-you-go pricing
- Supports multiple operating systems (Linux, Windows)
- Easily integrates with other AWS services

### 🏢 Real-Time Usage:
- Hosting web applications
- Running backend services (Java, NodeJS)
- CI/CD tools (Jenkins)
- Batch processing jobs

---

## ⚙️ EC2 Instance Types

Instance types define the hardware configuration of the server (CPU, RAM, Storage).

---

### 🔹 1. General Purpose
- Balanced CPU and memory
- Examples: `t2`, `t3`, `t3a`
- Use cases:
  - Web servers
  - Small applications

---

### 🔹 2. Compute Optimized
- High CPU performance
- Examples: `c5`, `c6`
- Use cases:
  - High-performance APIs
  - Gaming servers
  - Batch processing

---

### 🔹 3. Memory Optimized
- High RAM
- Examples: `r5`, `r6`
- Use cases:
  - Databases
  - Caching (Redis)

---

### 🔹 4. Storage Optimized
- High disk I/O
- Examples: `i3`, `d2`
- Use cases:
  - Big data
  - Data warehouses

---

### 🔹 5. GPU Instances
- GPU-based processing
- Examples: `p3`, `g4`
- Use cases:
  - Machine Learning
  - AI workloads

---

## 💰 EC2 Purchasing Options

AWS provides multiple pricing models to optimize cost.

---

### 🔹 1. On-Demand
- Pay per use (hour/second)
- No commitment

**Best for:**
- Testing
- Short-term workloads

---

### 🔹 2. Reserved Instances (RI)
- 1 or 3-year commitment
- Up to 70% cheaper

**Best for:**
- Production environments

---

### 🔹 3. Spot Instances
- Up to 90% cheaper
- Can be terminated anytime by AWS

**Best for:**
- Batch jobs
- CI/CD pipelines
- Fault-tolerant applications

---

### 🔹 4. Savings Plans
- Flexible pricing model
- Commit to usage instead of instance type

---

### 🔹 5. Dedicated Hosts / Instances
- Physical server dedicated to a single customer

**Best for:**
- Compliance requirements
- Licensing needs

---

