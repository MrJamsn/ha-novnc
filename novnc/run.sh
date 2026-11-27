#!/bin/sh
# Liest Ziel und Port aus den App-Optionen und startet websockify mit noVNC
# als Weboberfläche. Erreichbar ist der Port nur über Ingress.
set -e
OPTS=/data/options.json
opt() { python3 -c "import json; v=json.load(open('$OPTS')).get('$1'); print('' if v is None else v)"; }

HOST="$(opt host)"
PORT="$(opt port)"
if [ -z "$HOST" ]; then
  echo "[novnc] Die Option 'host' ist leer. Adresse oder Name des Rechners eintragen."
  exit 1
fi

echo "[novnc] Ingress :8099 -> ${HOST}:${PORT:-5900}"
# Der Ping hält die Verbindung offen, wenn sich am Bildschirm nichts ändert
# (Cloudflare trennt einen stillen WebSocket nach 100 Sekunden).
exec websockify --heartbeat 30 --web /opt/novnc 8099 "${HOST}:${PORT:-5900}"
