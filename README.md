# belaconflans-monitor

Sonde d'uptime de la boutique belaconflans.com : toutes les 5 minutes, GitHub Actions teste la
boutique, la page panier et l'API. En cas d'échec, GitHub envoie un email au propriétaire du dépôt.

Test manuel : onglet Actions > Uptime > Run workflow (champ « base » : `staging.belaconflans.com`
pour tester la préprod).
