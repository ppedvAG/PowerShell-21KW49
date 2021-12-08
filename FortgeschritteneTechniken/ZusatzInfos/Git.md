# Praktsiche Befehle bei der Verwendung von Git

Konfigurieren von Git
```bash
git config --global user.Name "Vorname Nachname"
git config --global user.email Name@email.de
```

---

```bash
git init <Name>
```
Erstellt ein leeres Repository inklusive Ordner am aktuellen Pfad

---

```bash
gid add <Dateiname.txt>
```
Fügt eine neue Ddatei zum "tracking" hinzu und staged diese. Bestehende Dateien werden nur ins Staging hinzugefügt. 

---

```bash
git commit -m "Commitnachricht"
```
Übernimmt die Dateien / Änderungen die sich im Staging befinden in das lokale Repository

---

```bash
gitk
```
Zum anzeigen einer kleinen GUI

```bash
git log
```
bzw
```bash
git log --graph
```
Zeigt in der Konsole die Commithistory an.

---

```bash
git clone <url> <optional OrdnerName>
```
Klont ein Remoterepository auf das lokale System sodass lokal damit gearbeiter werden kann.
```bash
git pull
```
Lädt Änderungen vom RemoteRepository in das lokalen Repository herunter und weißt bei Konflikten / Merge Vorgängen darauf hin.