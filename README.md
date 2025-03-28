# Dolibarr Model Generator

![Build Status](https://github.com/dancab3/dolibarr-model-generator/actions/workflows/build.yml/badge.svg)

🚀 Générateur de modèles de factures récurrentes pour [Dolibarr ERP/CRM](https://www.dolibarr.org/)

## Fonctions principales

- Import CSV de modèles client
- Génération automatique de factures brouillon
- Historique et suivi par interface web
- Export CSV des factures créées
- Support AppImage et .deb

## 📦 Installation

### A. Avec le script `.deb`

```bash
chmod +x build.sh setup_dependencies.sh
./build.sh
```

### B. Avec AppImage

```bash
./appimagetool-x86_64.AppImage DolibarrModelGenerator.AppDir
```

## 🚧 Dépendances

- Python 3
- Flask
- pandas
- dotenv
- requests

## 📁 Contenu

- `build.sh` : construction du .deb
- `setup_dependencies.sh` : installation des dépendances
- `dolibarr-model-generator.desktop` : lanceur Linux
- `dolibarr_icon.png` : icône
- `DolibarrModelGenerator.AppDir` : structure AppImage
- `dolibarr-model-generator_pkg` : structure .deb
