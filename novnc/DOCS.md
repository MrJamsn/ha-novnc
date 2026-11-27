# noVNC

Zeigt die Bildschirmfreigabe (VNC) eines Rechners im Heimnetz im Browser.
Die App hat keinen offenen Port, sie ist nur über Ingress von Home Assistant
erreichbar und nur für Administratoren.

## Optionen

| Option | Bedeutung |
|---|---|
| `host` | Adresse oder Name des Rechners, zum Beispiel `192.168.178.20` |
| `port` | VNC-Port, in der Regel `5900` |

## macOS

Systemeinstellungen, Allgemein, Teilen, Bildschirmfreigabe einschalten.
Angemeldet wird mit Benutzername und Passwort des Mac-Kontos; ein eigenes
VNC-Passwort ist nicht nötig.

Der Rechner braucht eine feste Adresse (im Router zuweisen) und darf nicht
schlafen, solange er erreichbar sein soll.
