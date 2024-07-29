## Anforderungen an ein Wissensmanagementsystem
Die folgenden Kriterien wurden für das Konzept eines Wissensmanagementsystems für wichtig erachtet.

### Sicherheit

Eine wichtige **Voraussetzung** für die Wissensweitergabe ist **Vertrauen**. Wissensaustausch ist eine Art Marktplatz, auf dem es (**Wissens-**)**Verkäufer**, (**Wissens-**)**Käufer** und (**Wissens-**)**Vermittler** gibt (siehe [@davenport_wenn_1999]). Die Währung auf diesem Marktplatz ist in den seltensten Fällen Geld. Vielmehr geht es um **Annerkennung**, **Status** oder die **Hoffnung auf Gegenleistung**. Damit einzelne Wissensgeber nicht durch Nutzer des Systems übervorteilt werden, müssen bestimmte Sicherheitsmaßnahmen getroffen werden.

Um zu gewährleisten, dass das System nicht missbraucht werden kann, ist es erforderlich, dass sich die Nutzer gegenüber dem System autorisieren müssen (im Gegensatz zum bestehenden Intranet), um bestimmte Aktionen durchführen zu können (zum Beispiel das Einstellen von Dokumenten).

Um redundante Datenhaltung zu vermeiden, ist es sinnvoll, an die bereits bestehende Nutzerverwaltung anzuknüpfen. Dafür muss sich das System an die Userverwaltung von NT (zum Beispiel über SMB), UNIX (zum Beispiel passwd, NIS), Lotus Notes oder neuere Standards (zum Beispiel LDAP) anbinden lassen.

In dem System muss immer klar erkennbar sein, wer Urheber eines Elements ist und wer Zugriff auf einzelne Elemente hat. Während es in einem Wissensmanagementsystem die Regel sein sollte, dass die meisten Elemente frei zugänglich sind, gibt es Einzelfälle, in denen die Möglichkeit bestehen muss, einen bestimmten Bereich für einen autorisierten Personenkreis zugänglich zu machen.

**Fazit:** Vertrauen durch Sicherheit aufzubauen ist eine wichtige Aufgabe des Wissensmanagementsystems. Zugriffsrechte und Systemnutzer müssen zu jedem Zeitpunkt transparent sein.

### Plattformunabhängigkeit
Plattformunabhängigkeit ist ein sehr wichtiger Aspekt für ein Wissensmanagementsystem am IIS. Wie bereits beschrieben, ist das Umfeld sowohl aus Software- als auch aus Hardwaresicht sehr heterogen, was die Beschränkung auf eine Plattform unmöglich macht.

Die effizienteste Lösung ist in diesem Fall die Webtechnologie. **Webbrowser** sind **auf jeder Plattform** standardmäßig **verfügbar**. Zusammen mit Techniken wie Javascript und Cascading Stylesheets (CSS) bietet sich die Möglichkeit ein umfangreiches und zugleich mächtiges Werkzeug anbieten zu können.

**Hinweis:** Die Verwendung von Java in Form von Java-Applets wurde ausgeschlossen. Es entsteht bei der Übertragung des Javacodes vom Server an den Client eine lange Ladezeit. Außerdem sind die virtuellen Javamaschinen, die im Client verwendet werden, um den Code auszuführen, auf den einzelnen Plattformen nicht identisch implementiert, so dass die Anforderung der Plattformunabhängigikeit nur bedingt erfüllt ist.

### Einfache, intuitive Bedienbarkeit

Bei vielen modernen Systemen fällt die Einarbeitung schwer, da sich der Nutzer an ein neues Interface, neue Funktionen, etc. gewöhnen muss. Lotus Notes am IIS ist dafür ein gutes Beispiel. Da es für das Institut keine angepasste Lösung gibt, steht ein neuer Nutzer einer Vielzahl von Funktionen in Form von Buttons, Menüs, etc. gegenüber, deren Nutzen für ihn nicht sofort erkennbar ist.

Es fällt schwer, den persönlichen Nutzen durch das System abzuschätzen und die Gefahr, dass das **Interesse nachlässt**, ist groß.

Das Benutzerinterface in diesem Konzept soll so gestaltet werden, dass sich jeder Nutzer schnell zurechtfindet und seinen Nutzen einschätzen kann. Diese Eigenschaft soll dadurch erreicht werden, dass der Nutzer in allen Bereichen des Systems eine ähnliche Umgebung vorfindet und verschiedene **Elemente**, wie zum Beispiel das kontextsensitive Menü, **immer an der gleichen Stelle** zu finden sind.

**Sparsame Verwendung von Farbe** und **Zuordnung von Symbolen** zu bestimmten Bereichen erhöht den Komfort beim Navigieren. Bestimmte Elemente, wie globales Menü und Suchfunktion, sind in jeder Ansicht vorhanden.

### Erweiterbarkeit, Flexibilität
Ebenso, wie sich das zu verwaltende Wissen verändert, muss auch das System in der Lage sein, sich anzupassen. Dies betrifft sowohl die verwalteten Inhalte als auch die Struktur und die Darstellung, in der diese präsentiert werden. Es muss die Möglichkeit bestehen, das System sehr einfach um benötigte Funktionen zu erweitern.

Weiterhin muss sich das System durch den Anwender an dessen Bedürfnisse anpassen lassen. Diese Anforderung bedingt, dass eine Technik zum Einsatz kommt, die eine **Trennung von Inhalt, Logik und Layout** zulässt. Somit kann der Benutzer beispielsweise das Aussehen seines Bereichs völlig neu gestalten, wobei die Inhalte identisch bleiben.

### Logisch strukturiert
Für die Navigation in den Wissenselementen ist eine unterliegende logische Struktur (Wissenslandkarten) unbedingt nötig. So lange nur geringe Datenmengen zu handhaben sind, erweist sich die Volltextsuche als ausreichend. Vergrößert sich aber der Datenbestand, so muss auch eine strukturierte Navigation oder eine Kombination aus beidem möglich sein.

Das Fehlen einer solchen Struktur führt im IIS beispielsweise dazu, dass vielen Mitarbeitern die Onlinesammlung von Studien- und Diplomarbeiten nicht bekannt ist. Auch über ein Suchinterface sind diese Arbeiten nicht auffindbar.

Die Frage nach einem geeigneten Weg, jedes einzelne Wissenselement in einen Gesamtkontext einzubetten, wird im Rahmen dieser Diplomarbeit nicht geklärt. Eine solche Vorgehensweise muss für das gesamte IIS festgelegt werden.

Auf der einen Seite kann die Vergabe von **Kategorien** und **Schlagwörtern** vorgeschrieben werden. Dies bedingt ein **hierarchisches Glossar**, das jedes beliebige Thema erfassen kann. Ein solches Glossar stellt beispielsweise die [Dewey-Dezimalklassifikation](https://www.oclc.org/en/dewey.html) dar. Gerade bei fachspezifischen Themen geht allerdings auch diese Klassifikation nicht ausreichend in die Tiefe.

Die zweite Möglichkeit besteht darin, die **Verschlagwortung dem Nutzer** zu **überlassen**, was zur Folge haben kann, dass einzelne Dokumente nicht an allen Stellen auftauchen, an denen sie relevant sind.

Sinnvoller ist, die Kategorisierung bis zu einer gewissen Stufe vorzuschreiben und ab dieser Stufe freie Verschlagwortung ergänzend zuzulassen. Eine Möglichkeit für ein solches Vorgehen ist, die Verantwortlichen für die einzelnen **Kernkompetenzen** zu identifizieren (=Kernkompetenz als erste Hierarchiestufe) und diese zu beauftragen, eine **zweite Schlagworthierarchie** mit cirka 10-20 Kategorien zu definieren.

Beide Schlagworthierarchien müssen in regelmäßigen Abständen überprüft und ergänzt werden.

### Verwendung von Standards
Proprietäre Formate besitzen im Vergleich zu Standards den Nachteil, dass die Daten nur in der Applikation verwendet werden können, für die sie angelegt worden sind. Das zu konzipierende System soll konsequent auf bestehende Standards aufbauen, um diesen Nachteil zu umgehen.

Austauschformate zwischen einzelnen Applikationen wie beispielsweise XML werden sich immer mehr durchsetzen. Die Integration der bisher bestehenden Insellösungen zu einem Gesamtsystem, das auf einen einheitlichen Datenbestand zurückgreift, wird eine der entscheidenden Herausforderungen sein.

### Mit Standardsoftware bedienbar
Diese Anforderung ist eine Erweiterung der Forderungen nach Plattformunabhängigkeit und der Verwendung von Standards. Für die Bedienung des Systems müssen gängige, und damit auf jeder Plattform verfügbare, Werkzeuge ausreichend sein. Zu dem Oberbegriff **Bedienung** zählen die **Administratio**, das **Abfragen von Inhalt** als auch das **Einstellen von neuen Inhalten** (Publishing).

Für die Bedienung des zu konzipierenden Systems sollen die Produkte Netscape Communicator, Internet Explorer/Frontpage Express und das Microsoft Office ausreichend sein. Die Browser müssen mindestens in der **Version 4.x** verwendet werden, um die Präsenz bestimmter Funktionen sicherzustellen.
