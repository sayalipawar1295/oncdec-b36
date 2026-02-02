# ⭐ What is a Remote?

A remote is a link between your local project and GitHub.
Remote = connection between your laptop’s repo and GitHub repo.

## **1) Create a directory on your local machine**

```bash
mkdir my-project
cd my-project
```

---

## **2) Initialize Git**

```bash
git init
```

---

## **3) Create a README (recommended)**

```bash
echo "# my-project" > README.md
```

Add any project files you want.

---

## **4) Add files to staging**

```bash
git add .
```

---

## **5) Commit the files**

```bash
git commit -m "initial commit"
```

---

# ⭐ NOW CREATE REPO ON GITHUB (Web UI)

### **6) Go to GitHub → Click “New Repository”**

1. Open GitHub
2. Click **New** (top-left)
3. Enter repo name: `my-project`
4. Choose **Public** or **Private**
5. **IMPORTANT**:
   **Do NOT select “Initialize repository with README”**
   (because your local repo already has README)

### **7) Click "Create Repository"**

GitHub will now show the commands to connect remote.

---

## **8) Add GitHub remote URL**

Copy the HTTPS URL from GitHub, example:

```
https://github.com/your-username/my-project.git
```

Add it locally:

```bash
git remote add origin https://github.com/your-username/my-project.git
```

---

## **9) Set branch name to main**

```bash
git branch -M main
```

---

## **10) Push local code to GitHub**

```bash
git push -u origin main
```

This uploads your local project to GitHub.

---

## **11) Verify**

```bash
git remote -v
```

---

















---
<img width="1455" height="573" alt="image" src="https://github.com/user-attachments/assets/58af4c26-af40-4565-9288-b6c820156850" />
<img width="1175" height="385" alt="image" src="https://github.com/user-attachments/assets/26fef89e-390f-4e41-967a-54a73ae0480c" />
<img width="1201" height="402" alt="image" src="https://github.com/user-attachments/assets/417c77e3-a0a4-4035-8b52-0046c1434b0f" />


````
echo "# asdfghjkl" >> README.md
git init
git add README.md
git commit -m "first commit"
git branch -M main
git remote add origin https://github.com/abhipraydhoble/asdfghjkl.git
git push -u origin main
````
