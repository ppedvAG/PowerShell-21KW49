# How To Zahlen formatieren mit Powershell

---

### Kommazahlen auf Nachkommastellen runden
N2 steht hier für 2 Nachkommastellen. Anstelle von zwei kann auch jede beliebge andere Zahl angegeben werden um die Nachkommastellen zu bestimmen.
```powershell
"{0:N2}" -f 5.123
```
Ergebnis: **5,12**

---

### Ganze Zahlen mit führende nullen versehen.
z.b. für die Bennenung von Dateien und Ordnern. D5 steht hier für 5 Dezimalstellen
```powershell
"{0:D5}" -f 7
```
Ergebnis: **00007**

---

### Ausgabe eines Wertes als "Währungsbetrag"
Der angegebene Wert wird auf 2 Nachkommastellen gerundet und mit dem regionalen Währungszeichen ausgegeben 
```powershell
"{0:C2}" -f 5.1234
```
Ergebnis: **5.12 €**

---

### Formatierung in einen Prozentwert
Der angegebene Wert wird mit 100 Multipliziert und mit einem Prozentzeichen ausgegeben. P0 wird auf einen ganzen Prozentwert runden, mit P2 könnte man sich zwei Nachkommastellen ausgeben lassen
```powershell
"{0:P2}" -f 0.01567
```
Ergebnis: **1,57 %**

--- 