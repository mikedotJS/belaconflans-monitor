#!/usr/bin/env bash
# Teste la boutique, l'API et le panier (porte d'entrée du paiement). Échoue si l'une répond mal.
set -u
base="${1:-belaconflans.com}"
fail=0
check() {
  code=""
  for try in 1 2; do
    code=$(curl -s -o /dev/null -m 20 -w '%{http_code}' "$1" || true)
    [ "$code" = "200" ] && break
    sleep 5
  done
  if [ "$code" = "200" ]; then echo "OK   $code $1"; else echo "FAIL $code $1"; fail=1; fi
}
check "https://$base/fr"
check "https://$base/fr/store"
check "https://$base/fr/cart"
check "https://api.$base/health"
exit $fail
