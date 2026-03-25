## 📌 What is EC2?

Amazon EC2 (Elastic Compute Cloud) is a service that provides virtual servers in the cloud.

Instead of setting up physical machines, EC2 allows users to quickly create and manage servers based on their needs. These servers can be started, stopped, and scaled at any time.

---

### 🔹 Key Points

- Provides virtual servers (instances)
- Can be scaled up or down easily
- Follows a pay-as-you-use model
- Supports Linux and Windows operating systems
- Works with other AWS services like S3 and RDS

---

### 🏢 Real-Time Usage

- Hosting websites and applications  
- Running backend services  
- Setting up tools like Jenkins  
- Performing background or batch tasks  

---

## ⚙️ EC2 Instance Types

Instance types define the size and capacity of the server, such as CPU, memory, and storage.

Different applications require different types of resources, so choosing the right instance type is important.

---

### 🔹 1. General Purpose

- Balanced CPU and memory  
- Examples: `t2`, `t3`, `t3a`  

**Used for:**
- Web applications  
- Small to medium workloads  

---

### 🔹 2. Compute Optimized

- Higher CPU performance  
- Examples: `c5`, `c6`  

**Used for:**
- Applications that need more processing power  
- Batch jobs and high-performance tasks  

---

### 🔹 3. Memory Optimized

- Higher memory (RAM)  
- Examples: `r5`, `r6`  

**Used for:**
- Databases  
- Applications that store large data in memory  

---

### 🔹 4. Storage Optimized

- Better disk performance  
- Examples: `i3`, `d2`  

**Used for:**
- Data-heavy applications  
- Frequent read/write operations  

---

### 🔹 5. GPU Instances

- Includes GPU for advanced processing  
- Examples: `p3`, `g4`  

**Used for:**
- Machine learning  
- AI and video processing  

---

## 💰 EC2 Purchasing Options

AWS provides different pricing options to manage cost effectively.

---

### 🔹 1. On-Demand

- Pay only for what you use  
- No long-term commitment  

**Best for:**
- Testing and short-term usage  

---

### 🔹 2. Reserved Instances (RI)

- Commit for 1 or 3 years  
- Lower cost compared to on-demand  

**Best for:**
- Long-running applications  

---

### 🔹 3. Spot Instances

- Very low cost  
- Can be stopped anytime by AWS  

**Best for:**
- Non-critical tasks  
- Batch jobs  

---

### 🔹 4. Savings Plans

- Flexible pricing option  
- Based on usage commitment  

---

### 🔹 5. Dedicated Hosts / Instances

- Physical server dedicated to one user  

**Best for:**
- Special compliance or licensing needs  

---
