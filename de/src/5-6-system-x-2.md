## systemX II
### Überblick
Wie bereits erwähnt, wurde der Ansatz, die technische Plattform für das Wissensmanagementsystem selbst zu entwickeln, nach Evaluierung und prototypischer Realisierung aus zwei Gründen wieder verworfen:

1. Es wurde erkannt, dass man mit den vorhandenen **personellen Ressourcen** zu viel Zeit in die Entwicklung und den Test der Plattform investieren muss und sich aus diesem Grund nicht in ausreichendem Maß um die Methoden des Wissensmanagements kümmern kann, die auf der Plattform realisiert werden sollen.
2. Außerdem hat sich das Open-Source-Projekt **ZOPE** in der Zwischenzeit zu einem System entwickelt, das für die Anwendung als Wissensmanagementsystem im IIS sehr gut geeignet ist. Es erfüllt alle gestellten Anforderungen und bietet die Möglichkeit, die Entwicklung des Systems an die Open-Source-Entwickler zu übertragen. Durch die große Verbreitung des Systems und die offenliegenden Quellen können Fehler sehr viel schneller gefunden und beseitigt werden.

Die konzipierten Methoden des systemX II unterscheiden sich von denen des systemX I nicht maßgeblich, obwohl der technische Ansatz ein ganz anderer ist. Der Hauptunterschied ist, dass die Arbeitsplattform aus Apache Webserver, JServ, Cocoon und der MySQL Datenbank durch ZOPE ersetzt wurde.

![systemX II - Überblick](./img/systemx-ii-ueberblick.png)

### Implementierung der definierten Methoden
#### Diskussionsforum
Das Diskussionsforum kann in ZOPE mit zwei unterschiedlichen Produkten, **Confera** und **ZDiscussions** realisiert werden. Beide bieten die Möglichkeit von threadbasierten Diskussionen und den Versand von Emails. Im System werden beide Produkte vorhanden sein. **Empfohlen wird ZDiscussions**, da es eine Weiterentwicklung von Confera darstellt und für die in ZOPE integrierte Suchmaschine ZCatalog besseren Zugriff bietet.

#### Newssektion
Der Bereich für News wird mit dem Produkt [Squishdot](https://web.archive.org/web/20000815054006/http://www.squishdot.org/) realisiert. Squishdot bietet ähnliche Funktionen wie [Slashdot](https://slashdot.org/) und ist dieser Webseite nachgebildet.

Für den Einsatz am IIS sind an Squishdot einige Anpassungen vorgenommen worden. So gibt es bestimmte **Kategorien**, die alle durch ein **charakteristisches Symbol** gekennzeichnet sind (zum Beispiel Leitungskreis, Personalentwicklung, etc.). Die Verantwortlichen der entsprechenden Bereiche können in die Newssektion direkt Beiträge einstellen. So ist es dem Sekretariat des Institutsleiters beispielsweise möglich, alle Protokolle der Leitungssitzungen schnell und effizient zu verbreiten.

Mitarbeiter, die für keinen Bereich verantwortlich sind, können zwar auch Beiträge einstellen, diese müssen aber vor der **Veröffentlichung** durch den Administrator des Newsbereichs **bestätigt** werden (Review). Auf diese Weise wird eine schnelle und effiziente Weitergabe von Informationen ermöglicht und gleichzeitig dem Missbrauch vorgebeugt.

#### Privater Bereich
Wie auch schon im Konzept von systemX I unterscheidet sich der private Bereich eines Mitarbeiters von den anderen Bereichen nur dadurch, dass der **Mitarbeiter** dort **Administrator** ist. Der private Bereich ist so konzipiert, dass er eine Umgebung für die tägliche Arbeit der Mitarbeiter darstellt.

Standardmäßig ist der private Bereich für alle geöffnet und kann dadurch mit der globalen Suchmaschine erfasst werden. Ein Mitarbeiter kann aber auch bestimmte Sektionen in seinem Bereich für die Außenwelt verschließen.

#### Zugang über Standardsoftware
Genau wie im Konzept von systemX I kann das systemX II vollständig mit Webbrowser und **Standardsoftware** bedient werden. Zusätzlich zu der Möglichkeit, Inhalte über HTTP und FTP einzustellen, kann bei ZOPE das **WebDAV**-Protokoll [@goland_http_1999] verwendet werden.

[WebDAV](http://www.webdav.org) ist eine Erweiterung des Standards HTTP 1.1 und ergänzt diesen um Funktionen für die verteilte Bearbeitung von Dokumenten. Da es sich um einen sehr neuen Standard handelt, gibt es bisher wenig Werkzeuge, die WebDAV bereits unterstützen. Bisher sind das **MS Office 2000**, der **Internet Explorer 5.0/WebFolders** und mehrere kleine Werkzeuge verfügbar.

Notwendig für die Nutzung der Webfolders ist der Internet Explorer in der Version 5.x. Die Option Webfolders ist in der Standardinstallation nicht enthalten und muss im sogennanten **custom install** ausgewählt werden. Mit WebFolders ist es möglich, den Inhalt des Webservers wie ein normales Dateisystem zu behandeln. So arbeitet der Mitarbeiter mit seinen gewohnten Hilfsmitteln und ist ohne weitere Kenntnisse in der Lage, Inhalte auf dem Server zu administrieren.

#### Möglichkeit datenbankgestützter Anwendungen
Das Backend für die Datenbankverwaltung und die Anbindung der User über lokale Datenbanken sind aus dem Konzept von sytemX I entnommen. Da die Anforderungen genau die gleichen sind, waren keine Änderungen notwendig. Aus diesem Grund sollen im folgenden nur die Unterschiede in der Kommunikationsschicht zwischen ZOPE und dem DBMS behandelt werden.

ZOPE verwendet sogenannte **Database Adapter** (DA) um auf Datenbanken zuzugreifen. Derartige Adapter existieren für viele DBMS, wie zum Beispiel Oracle, Microsoft Access, Sybase und DB2. Der DA stellt eine Datenbankverbindung zur Verfügung, auf die andere Applikationen zugreifen können.

Um Datenbestände aus einer Datenbank abzufragen, können unter ZOPE vorhandene **SQL-Methoden** verwendet werden. Diese greifen auf einen DA zurück und führen SQL-Abfragen auf der Datenbank aus. Die Repräsentation der Daten kann durch den Anwender frei gewählt werden. Auf diese Weise lassen sich die Abfrageergebnisse in HTML-Tabellen, aber auch in XML oder anderen Formaten ausgeben.

Mit dem **SQL-Input-Wizard** können Schnittstellen zu bestehenden Datenbanken einfach eingerichtet werden. Basierend auf einem DA fragt der Wizard die Felder der Tabellen ab und erzeugt eine Eingabemaske. Diese kann dann an die individuellen Wünsche, wie zum Beispiel das Layout, angepasst werden. Der Anwender muss sich nicht mehr um den technischen Teil der Datenerfassung kümmern.

#### Suchfunktionen
Das Problem der Indizierung kann mit ZOPE sehr geschickt gelöst werden, denn es existiert ein eigenes Produkt, der **ZCatalog**, der die Aufgabe hat, Bereiche in ZOPE suchbar zu machen. ZCatalog ist sehr detailliert konfigurierbar und wird in dem Konzept verwendet, um alle Elemente des Systems zu indizieren.

Für externe Bereiche, wie zum Beispiel das IIS Intranet, wird wie in systemX I **Udmsearch** eingesetzt, um Inhalte zu indizieren. Die Inhalte werden von ZOPE über eine Datenbankverbindung zu einer MySQL Datenbank abgefragt.

In jeder Ansicht im System befindet sich die Möglichkeit eine Suche zu starten.

### Verwendete Produkte
Unter einem **Produkt** ist bei ZOPE zusätzliche Software zu verstehen, die das Gesamtsystem um bestimmte Funktionlität erweitert. Produkte können entweder von der **ZOPE Homepage** bezogen , oder selber programmiert werden. Die folgende Auflistung gibt eine Übersicht über die in systemX II eingesetzten Produkte (in alphabetischer Reihenfolge).

- Knowledge Kit
- LocalFS
- PSQInput Wizard/ZMySQLDA
- SiteSummary
- Squishdot
- TinyTable
- ZDConfera
