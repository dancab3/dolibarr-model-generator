#!/bin/bash
set -e

# Vérifier si le dossier courant est un dépôt git
if [ ! -d ".git" ]; then
  echo "⚠️ Ce dossier n'est pas un dépôt Git. Utilisez 'git init' d'abord."
  exit 1
fi

# Renommer la branche courante en main si ce n'est pas déjà fait
git branch | grep -q "main" || git branch -m main

# (Re)configurer l'origin
echo "🔗 Configuration du dépôt distant origin..."
git remote remove origin 2>/dev/null || true
git remote add origin https://github.com/dancab3/dolibarr-model-generator.git

# Commit si nécessaire
if [ -n "$(git status --porcelain)" ]; then
  echo "💾 Commit des changements..."
  git add .
  git commit -m "Initial commit"
else
  echo "✅ Aucun changement à committer."
fi

# Push vers GitHub
echo "🚀 Envoi vers GitHub..."
git push -u origin main
