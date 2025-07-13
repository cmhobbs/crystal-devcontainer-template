# crystal-devcontainer-template

This is a template repo for creating a new Crystal project with DevPod using devcontainers.

# Usage

## Create New Project from Template

1. **On GitHub**: Click "Use this template" → "Create a new repository"
2. **Name your new repo** and clone it locally:
```bash
git clone https://github.com/yourusername/your-new-project.git
cd your-new-project
```

## Update Project Files

3. **Replace placeholder strings** in these files:
   - ```.devcontainer/devcontainer.json```: ```PROJECT_NAME``` → ```your-new-project```
   - ```shard.yml```: ```PROJECT_NAME```, ```YOUR_NAME```, ```YOUR_EMAIL```
   - ```src/main.cr```: ```PROJECT_NAME``` → ```your-new-project```

4. **Quick find/replace** (Linux/Mac):
```bash
find . -type f -name "*.json" -o -name "*.yml" -o -name "*.cr" | xargs sed -i 's/PROJECT_NAME/your-new-project/g'
find . -type f -name "*.yml" | xargs sed -i 's/YOUR_NAME/Your Name/g'
find . -type f -name "*.yml" | xargs sed -i 's/YOUR_EMAIL/your@email.com/g'
```

## Start DevPod

5. **Open with DevPod**:
```bash
devpod up . --provider docker
```

## Initialize Crystal Project

6. **Inside the devcontainer**:
```bash
shards install
crystal build src/main.cr
./main
```
