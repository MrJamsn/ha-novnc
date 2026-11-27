# noVNC für Home Assistant

Ein App-Repository für Home Assistant mit einer App: noVNC hinter Ingress.
Damit lässt sich die Bildschirmfreigabe eines Rechners im Heimnetz im Browser
öffnen, über denselben Zugang wie Home Assistant selbst.

Einbinden: Einstellungen, Apps, App-Store, Repositories, dann
`https://github.com/MrJamsn/ha-novnc` eintragen.

Die App lädt [noVNC](https://github.com/novnc/noVNC) (MPL 2.0) und
[websockify](https://github.com/novnc/websockify) (LGPL 3.0) beim Bau des
Images.
