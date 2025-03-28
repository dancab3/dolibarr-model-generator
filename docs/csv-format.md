# Format du fichier CSV

Chaque ligne représente un client et ses services à facturer.

| Colonne         | Description                                      |
|-----------------|--------------------------------------------------|
| Code client     | Référence du tiers Dolibarr                      |
| message         | Référence du service 'MT'                        |
| AR1, AR6, etc.  | Types de tarification client par service         |
| SMS-u, E-Mails  | Services variables par quantité à facturer       |
| SDA-Forfait     | Services au tarif fixe (ex : SDA3, ForfPem)      |

- Les références de service doivent exister dans Dolibarr.
- La facturation se base sur les quantités fournies mensuellement.
