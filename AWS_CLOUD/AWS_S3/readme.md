# 🪣 Amazon S3 (Simple Storage Service)

Amazon S3 is a storage service used to store and retrieve data from anywhere over the internet.

It is designed for high durability, scalability, and easy access to files.

---

## 📌 What S3 Stores

- Images, videos, documents  
- Application assets (static files)  
- Logs and backups  
- Data for analytics  

Data in S3 is stored as **objects** inside **buckets**.

---

## 🔹 Key Features

- Highly scalable storage  
- 99.999999999% (11 9’s) durability  
- Accessible over the internet  
- Supports versioning (keeps multiple versions of files)  
- Fine-grained access control (IAM, bucket policies)  
- Lifecycle management (automatically move/delete data)  
- Encryption support for data security  

---

## 🏢 Real-Time Usage

- Storing website images and static content  
- Backup and restore solutions  
- Log storage (CloudWatch, application logs)  
- Data lakes and analytics  

---

# ⚖️ Difference: EBS vs S3 vs EFS

---

## 🔹 Amazon EBS (Elastic Block Store)

- Block storage attached to EC2  
- Works like a hard disk  
- Used by one instance at a time  

**Use cases:**
- OS storage  
- Databases  
- Applications requiring low latency  

---

## 🔹 Amazon S3

- Object storage  
- Accessed over the internet  
- Not attached to EC2 directly  

**Use cases:**
- Static files  
- Backups  
- Media storage  

---

## 🔹 Amazon EFS (Elastic File System)

- File storage (shared)  
- Can be used by multiple EC2 instances  

**Use cases:**
- Shared application data  
- Web servers with common files  

---

## 🧠 Quick Comparison

| Feature        | EBS              | S3                | EFS                     |
|---------------|------------------|------------------|--------------------------|
| Type          | Block storage    | Object storage    | File storage             |
| Usage         | Single EC2       | Internet-based    | Multiple EC2             |
| Access        | Attached to EC2  | API/HTTP          | Mounted filesystem       |
| Best For      | OS, DB           | Backup, static    | Shared data              |

---

# 📦 S3 Storage Classes

S3 provides different storage classes based on cost and access frequency.

---

## 🔹 1. S3 Standard

- High availability and durability  
- Frequent access  

**Used for:**
- Active data  
- Websites  

---

## 🔹 2. S3 Intelligent-Tiering

- Automatically moves data based on usage  

**Used for:**
- Data with unknown access patterns  

---

## 🔹 3. S3 Standard-IA (Infrequent Access)

- Lower cost than standard  
- Slight retrieval cost  

**Used for:**
- Backup data  
- Rarely accessed files  

---

## 🔹 4. S3 One Zone-IA

- Stored in one AZ only  
- Cheaper than Standard-IA  

**Used for:**
- Non-critical data  

---

## 🔹 5. S3 Glacier

- Low-cost archival storage  
- Retrieval takes minutes to hours  

**Used for:**
- Long-term backups  

---

## 🔹 6. S3 Glacier Deep Archive

- Lowest cost storage  
- Retrieval takes hours  

**Used for:**
- Long-term data retention  

---
 
- Storage classes help balance cost and access needs  

👉 Choosing the right storage type and class helps optimize performance and cost
