#!/bin/bash
set -e

# Vérifie que GITHUB_TOKEN est bien défini
if [ -z "$GITHUB_TOKEN" ]; then
  echo "❌ Variable d'environnement GITHUB_TOKEN manquante."
  echo "Définissez-la avec : export GITHUB_TOKEN=xxxxxxxxxxxxxxxx"
  exit 1
fi

# Initialisation Git si nécessaire
if [ ! -d ".git" ]; then
  git init
fi

# Renommer branche actuelle en main
git branch | grep -q "main" || git branch -m main

# Configuration distante avec token
git remote remove origin 2>/dev/null || true
git remote add origin https://dancab3:$GITHUB_TOKEN@github.com/dancab3/dolibarr-model-generator.git

# Commit si des modifications existent
if [ -n "$(git status --porcelain)" ]; then
  git add .
  git commit -m "Initial commit"
else
  echo "✅ Aucun changement à committer."
fi

# Push sécurisé
git push -u origin main
