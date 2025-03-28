# Installation

## 📦 Méthode .deb (Debian/Ubuntu/Mint)

```bash
chmod +x build.sh setup_dependencies.sh
./build.sh
```

Cela installera le générateur dans `/opt/dolibarr-model-generator`.

## 🧰 Méthode AppImage (Portable Linux)

```bash
./appimagetool-x86_64.AppImage DolibarrModelGenerator.AppDir
```

Un fichier `.AppImage` sera généré, exécutable sur n'importe quel Linux.

## 🛠 Dépendances

- Python 3
- Flask
- pandas
- dotenv
- requests
