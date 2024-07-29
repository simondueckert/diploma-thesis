## Systemauswahl
### Kommerzielle Systeme
#### Lotus Notes/Domino
Ein **Lotus Notes System besteht aus** einem oder mehreren **Servern** (Domino) und entsprechenden **Clients** (Notes), die auf den Server zugreifen. Die Zielsetzung dieses Systems ist die Bereitstellung einer Plattform, auf der bestimmte Dienste, unabhängig vom jeweiligen Betriebssystem der Clients, angeboten werden können.

**Im Lieferumfang** des Lotus Notes Paketes sind deswegen nur sehr **wenig Funktionen enthalten**. Zu nennen sind Mailclient, ein Kalender und Diskussionsforen. Das **System muss**, je nach Anforderungen, um die gewünschte Funktionalität **erweitert werden**.

Diese Erweiterung kann prinzipiell auf zwei Wegen erfolgen: Entweder werden **Anwendungen** auf der Notes Plattform **programmiert**, wozu die Notes Entwicklungstechniken erlernt werden müssen, **oder** es werden **Produkte** von Firmen **gekauft**, die für die Notesplattform entwickeln. Diese Produkte gibt es mittlerweile für alle in einer Firma benötigten Funktionen, wie Dokumentenmanagement, Kontaktverfolgung, Customer Care, etc.

Eigene Applikationen wurden am IIS bereits programmiert. Es entstand, in relativ langer Programmierzeit, eine **Adressdatenbank**, mit der **Kundenkontakte** verfolgt werden können. Diese Datenbank ist mittlerweile in vielen Abteilungen im Einsatz. Eine Erweiterung ist für den Endanwender kaum möglich, da hierzu Programmierkenntnisse und entsprechende Rechte notwendig sind.

Eine weitere, bereits realisierte Applikation ist das **Helpdesksystem** der Systemadministratoren. Dieses bietet die Möglichkeit, Anfragen an die Administratoren durch ein Webinterface zu erstellen.

Die Einführung und der Betrieb von Notes ist sehr **supportaufwendig**. Allein die Installation der Clients (Rollout) nimmt einige Monate in Anspruch. Die Installation der Clients ist allerdings nur ein kleiner Teil der Arbeit. Der größere Teil liegt darin, zu definieren, welche Applikationen auf der Notes-Plattform überhaupt implementiert werden sollen. Dazu muss eine ganz klare Notes-Strategie definiert sein, die mit Zielen, Ressourcen und Zeitplänen versehen ist.

**Fazit:** Das System Lotus Notes/Domino ist prinzipiell gut für die Funktion eines Wissensmanagementsystems geeignet. Es gibt allerdings einige Nachteile, die gegen eine Verwendung am IIS sprechen.

1. **Mangelnde Verbreitung von Clients:** Die Zahl der Clients ist sehr gering. Das bedeutet, dass mit einem Notes-System nur ein kleiner Teil der Mitarbeiter abgedeckt wird.
2. **Mangelnder Support:** Support für die Plattform Notes ist kaum vorhanden. Zwar besteht die Möglichkeit, einen Client installiert zu bekommen, darüber hinaus gibt es aber keine Einführung o.ä. in die Nutzung/Weiterentwicklung von Notes.
3. **Aufwendige Einarbeitung für Endnutzer:** Ein Mitarbeiter, der bestimmte Funktionalität in Notes implementieren möchte, hat eine relativ steile Lernkurve zu durchlaufen, da es sehr zeitaufwendig ist, sich in die Notes-Technik einzuarbeiten. Auch die tägliche Benutzung des Notesclients ist nicht intuitiv möglich.
4. **Fehlende Strategie für die Einführung:** Da es für das Produkt keine klare Einführungsstrategie gibt, ist unsicher, ob Notes überhaupt irgendwann als Plattform für alle Mitarbeiter zur erfügung stehen wird. Die Einführung zieht sich mittlerweile über mehrere Jahre, weswegen viele Mitarbeiter verunsichert sind.
5. **Aspekt der Plattformunabhängigkeit geht verloren:** Ein wichtiger Grund für die Entscheidung für den Kauf von Notes war die Tatsache, dass Notes Clients für die meisten am IIS vorhandenen Plattformen (Windows/Mac/UNIX) bereitstellt. Ab der Version 5 (die sich im IIS bereits im Teststadium befindet) wird kein Client mehr für UNIX Systeme angeboten, was den angesprochenen Vorteil neutralisiert.

#### Microsoft Outlook/Exchange

Die Kombination aus Outlook und Exchange ist prinzipiell als **Microsoft Pendant zu Notes/Domino** zu verstehen. Als Mitglied der Microsoft Office Produktpalette ist der Outlook Client am IIS bereits für jeden Mitarbeiter lizenziert.

Der **Exchange Server** ist zwar im Microsoft Select Vertrag enthalten, aber **für** das **IIS nicht lizenziert**. Wie auch für den Betrieb eines Lotus Domino Servers ist für Exchange eine Lizenz erforderlich.

Die Kombination aus Outlook und Exchange bietet einige **Vorteile gegenüber der Notesplattform**, die im Folgenden näher erläutert werden sollen.

Durch die Zugehörigkeit zum Microsoft Office kann der **Outlook Client** wesentlich **intuitiver bedient** werden als der Notes Client. Oberflächen und Benutzerführung sind dem Office gegenüber ähnlich aufgebaut.

Die Applikationen des **MS Office** sind in Outlook/Exchange **gut integrierbar**. So ist es beispielsweise möglich, das Erstellen von Dokumenten und deren Versand oder Ablage automatisch in einem Journal zu protokollieren. Dieses Journal dient dann als Kontakthistorie für einzelne Personen. Das Verteilen von Aufgaben per Mail ist ebenso möglich wie bei Notes. Allerdings können in Outlook diese Aufgaben beispielsweise in Microsoft Project integriert werden.

Um das Outlook/Exchange System zu erweitern sind **weniger Programmierkenntnisse erforderlich** als bei Notes. So genannte Outlook Formulare können mit den Funktionen des Microsoft Office leicht erstellt und veröffentlicht werden. Das Erlernen neuer Programmiersprachen ist für einfache Erweiterungen nicht nötig.

**Fazit:** Die Kombination aus Outlook und Exchange ist sehr gut geeignet, um den Kommunikationsteil eines Wissensmanagementsystems am IIS zu realisieren. Die intuitive Benutzung, die Verfügbarkeit auf Windows und Mac und die gute Integration des Microsoft Office machen es der Notes Lösung überlegen. Zu beachten ist aber auch der psychologische Aspekt. Lotus Notes ist bereits gekauft worden und wird an einigen Stellen auch verwendet. Eine mögliche Umstellung auf Outlook/Exchange wird deswegen sicherlich Reibungspunkte mit sich bringen. Die Entscheidung muss auf alle Fälle basierend auf fundierten Erkenntnissen getroffen werden.

### Open Source/Freie Systeme
#### TWIG - The Web Integration Gateway
Die beste Umschreibung für die Funktionen von [Twig](https://web.archive.org/web/20020802144703/http://twig.screwdriver.net/about.php3) ist Mini-Groupware. Die Funktionen von Twig sind hauptsächlich im Kommunikationsbereich angesiedelt. Mit den im Folgenden beschriebenen Funktionen eignet es sich eher als **kleines Internetportal** als für ein Wissensmanagementsystem.

- Email (über IMAP)
- Kontakte (in Form eines Adressbuchs)
- Termine
- Usenet Newsgruppen (NNTP)
- ToDo Listen
- Bookmarks

Als Wissensmanagementplattform für das IIS eignet sich TWIG nicht, da es über seine Funktionen hinaus nur **schwer erweiterbar** ist. Es fehlen beispielsweise wichtige Funktionen wie die Datenbankunterstützung. Da Twig komplett **in PHP3 geschrieben** ist, könnten diese Funktionen nachgerüstet werden, was allerdings sehr arbeitsintensiv ist.

#### ZOPE - Z Object Publishing Environment
[ZOPE](https://www.zope.dev) eignet sich mit seinem offenen, **objektorientierten Ansatz** und seiner **einfachen Bedienbarkeit** hervorragend als Plattform für das IIS. Die Eigenschaften dieses **Application Server** sollen im Folgenden näher beleuchtet werden.

Ein auf ZOPE basierendes System ist **vollständig webbasiert**. Das bedeutet, dass sowohl der Benutzer, der Administrator, als auch der Entwickler mit einem normalen Webbrowser auskommen. Die Installation von speziellen Clients ist (im Gegensatz zu Lotus Notes) nicht nötig und erspart viel Zeit.

Das System ZOPE kann sehr komfortabel durch sogenannte **Produkte** über den Standardumfang hinaus erweitert werden. Im Standardumfang sind oft benötigte Elemente wie Folder, Dateien, DTML-Methoden, Bilder und Indizierfunktionen enthalten.

Es gibt Produkte, mit denen man **Verbindungen zu Datenbanken** herstellen, **Umfragen** erstellen und **lokale Filesysteme einbinden** kann. Zum Zeitpunkt dieser Arbeit waren bei ZOPE **über 110** verschiedene **Produkte verfügbar**.

ZOPE unterstützt alle im Konzept geforderten Standards und darüber hinaus noch einige mehr (**HTML 4, CSS, HTTP 1.1, FastCGI, FTP, WebDAV, DOM, XML, XML-RPC, SQL, RSS, LDAP**). Besonders durch die Verwendung der Standards HTTP/WebDAV ist eine Integration in die Microsoft Office Produktpalette sehr einfach möglich.

In ZOPE können logische Funktionen durch das, von XML abgeleitete, Derivat **DTML** (Document Type Markup Language) realisiert werden. Bevor ZOPE eine Seite an einen Client überträgt, prüft es diese auf vorhandene DTML-Tags, wertet diese aus und sendet das Ergebnis an den Client. Diese Vorgehensweise ist ähnlich wie bei PHP.

In DTML existieren Befehle für die meisten benötigten Funktionen. Dazu gehören unter anderem Datenbankabfragen, der Versand von Emails und die Deklaration von Variablen. Obwohl das System ZOPE in [Python](https://www.python.org/) programmiert ist, wird der normale Entwickler im Normalfall nicht mit dieser Programmiersprache konfrontiert und kann seine Applikation vollständig in DTML implementieren.

Mit **XML Document** steht ein Produkt zur Verfügung, mit dem XML-Inhalte in das System integriert werden können. XML Document repräsentiert ein Dokument in der standardisierten **DOM API**. Über diese API können Elemente des Dokuments abgefragt, eingefügt oder verändert werden. Produkte, die ein XML Dokument in eine darstellbare Form (zum Beispiel HTML) umwandeln, stehen ebenfalls bereit.

Um beispielsweise in Lotus Notes eine Applikation zu entwickeln, muss man die Notes-eigene Programmiersprache erlernen, was mit einer steilen Lernkurve verbunden ist. Bei ZOPE ist der **Einstieg** viel einfacher möglich. Falls kein fertiges Produkt existiert, können kleine Applikationen bereits mit einfachen HTML/CGI Kenntnissen erstellt werden. Einfache Funktionen können somit maßgeschneidert durch Mitarbeiter selbst erstellt werden. Spezielle Lizenzen, wie die Notes-Entwicklerlizenz, sind nicht nötig.

Obwohl ZOPE mit einer Datenbank zusammen ausgeliefert wird, kann man prinzipiell jede **SQL Datenbank** (zum Beispiel Oracle, MySQL, Microsoft SQL) als **Datenspeicher** verwenden. Die integrierte **ZODB** (ZOPE Objectoriented Database) **bietet** allerdings einige sehr **komfortable Funktionen**, die bei Verwendung einer relationalen Datenbank fehlen.

Durch die Objektorientierung kann jeder Vorgang, wie zum Beispiel das Löschen eines Elements, rückgängig gemacht werden (**UNDO Funktion**).

Bei der Verwendung der ZODB besteht weiterhin die Möglichkeit der **Versionsverwaltung**. Hierbei kann der Entwickler eine neue Version eines Bereiches erstellen, ohne dass diese von den Nutzern des Systems abgefragt werden können. Die Nutzer sehen noch die alte Version. Erst wenn der Entwickler die neue Version freigibt, können andere darauf zugreifen.

Die Objekte in der Datenbank (ZODB) werden über ein sogenanntes **URL-Objekt-Mapping** adressiert. Dadurch kann jedes Objekt durch eine URL eindeutig angesprochen werden. Auf die Objekte können dann verschiedene Methoden angewendet werden.

Die **Vererbung** ist ein sehr mächtiges Hilfsmittel in ZOPE und ist sehr vielseitig einsetzbar. Jedes Unterverzeichnis erbt Rechte und Eigenschaften des übergeordneten Verzeichnisses. Das bedeutet, dass beispielsweise eine Person, die in oberster Ebene eine bestimmte Rolle zugewiesen bekommen hat, diese Rolle durch Vererbung auch in allen Unterverzeichnissen besitzt.

Eine weitere Anwendungsmöglichkeit der Vererbung ist, auf Toplevel allgemeingültige Objekte (zum Beispiel das Institutslogo) abzulegen. Dieses steht dann jedem Benutzer in den unteren Leveln zur Verfügung.

Prinzipiell kann die Benutzerverwaltung von ZOPE auf unterschiedlichen Wegen realisiert werden. Am einfachsten ist die in ZOPE integrierte Benutzerverwaltung, der sogenannte **UserFolder**. Dieser hat allerdings den **Nachteil**, dass jeder **Nutzer manuell eingetragen** werden muss und diese Daten außerhalb von ZOPE nicht zur Verfügung stehen.

Eine weitere Möglichkeit besteht darin, ZOPE über **bestehende Benutzerverwaltungen** wie zum Beispiel die von Microsoft Windows NT autentifizieren zu lassen. Hierzu wird ein bestimmtes Produkt (zum Beispiel NTUserFolder) benötigt. Der große Vorteil dieser Lösung besteht darin, dass mit NT bereits eine gepflegte Benutzerverwaltung am IIS vorliegt und diese unmodifiziert verwendet werden kann.

Langfristig ist allerdings empfehlenswert, alle Dienste, die Autentifizierung benötigen, aus einer **gemeinsamen Quelle** zu speisen. An dieser Stelle bietet sich **LDAP** als Standard an. Über LDAP kann nicht nur ZOPE, sondern auch Windows NT, UNIX, Dokumentenmanagementsysteme u.v.m. autentifizieren.

Besitzt eine Person auf einer Ebene Managerrecht, so kann diese Person die Benutzerverwaltung in ihrem Bereich selbst übernehmen. Ein Abteilungsleiter (als Manager seines Abteilungsbereichs) kann beispielsweise den Gruppen einen Unterbereich einrichten und festlegen, wer in seinem Bereich lesen, schreiben, bearbeiten, etc. kann.

Diese Funktion bietet sich an, wenn Personen, wie zum Beispiel Studienarbeiter, in der globalen Nutzerverwaltung noch nicht enthalten sind, aber dennoch Zugang zu einem Bereich des Systems bekommen sollen.

#### Jetspeed
Das Projekt [Jetspeed](https://portals.apache.org/jetspeed-2) beschreibt sich selbst als Enterprise Information Portal und Webbased Groupware. Die Projektwebseite lässt darauf schließen, dass es sich um einen sehr vielversprechenden Ansatz handelt. Leider wurde eine sinnvoll nutzbare Version erst am 21.03.2000 veröffentlicht, was eine Verifizierung leider nicht mehr möglich gemacht hat.

Interessant an Jetspeed ist, dass es sich um ein Projekt der sehr engagierten Apache Group, die auch den Webserver Apache entwickelt, handelt. Da auch Projekte wie JServ (Java Servlet Engine für Apache) oder Cocoon von dieser Gruppe durchgeführt werden, kann mit sehr großen Synergieeffekten in den Bereichen Java und XML gerechnet werde. Die einzelnen Projekte der Apache Group sind so ausgerichtet, dass die einzelnen Komponenten projektübergreifend eingesetzt werden können. Jetspeed unterstützt nach Aussage der Entwickler bereits viele Standards und Funktionen:

- XML
- Datenbank Benutzerautentifizierung (leider nicht über LDAP oder NT Domäne)
- Rich Site Summary (RSS)
- XML/XSL Inhalt durch Integration von Cocoon
- XML basierte Konfiguration
- Plattformunabhängig (einzige Bedingung JDK 1.1 und Servlet 2.0)
- Synchronisation mit Avantgo

#### Midgard
Von der Beschreibung her ist [Midgard](http://midgard-project.org) ähnlich einzustufen wie ZOPE. Im Gegensatz zu ZOPE ist Midgard allerdings ein **abgeschlossenes System**. Die Unterstützung für weitere externe Pakete fehlt. Außerdem ist die Unterstützung von Datenbanken sehr eingeschränkt, da **nur MySQL unterstützt** wird und auch die **Anbindung an LDAP** zum Autentifizieren **nicht möglich** ist.

Vom Funktionsumfang ist Midgard, trotz seines Untertitels Application Server Suite, eher in die Kategorie **Publishing-System** einzuordnen. Als Wissensmanagementsystem am IIS kommt Midgard aus den genannten Gründen nicht in Frage.

#### Enhydra
[Enhydra](https://web.archive.org/web/20050501054249/http://www.enhydra.org) ist ein **Application Server** mit **Java und XML** Unterstützung. Weil die Unterstützung von Enterprise Java Beans und CORBA angestrebt ist, kann sich Enhydra zu einer sehr attraktiven Lösung entwickeln.

Als Wissensmanagementsystem kommt Enhydra für das IIS nicht in Frage, da es keine Möglichkeit bietet, vorgefertigte Elemente, wie Diskussionsforen, etc. in das System einzubinden und miteinander zu verknüpfen.

#### OpenCMS
[OpenCMS](http://www.opencms.org) ist wie der Name schon andeutet ein **Content Management System**. Als solches ist es nicht auf Interaktion ausgelegt und deswegen nicht als Wissensmanagementsystem geeignet. In der Sektion "geplante Projekte"befinden sich aber dennoch einige interessante Dinge, wie beispielsweise die Unterstützung von **WML**, **LDAP** und einer **Volltextsuchmaschine**.

OpenCMS kommt als Plattform für das IIS-Wissensmanagementsystem nicht in Frage.

#### Intalio
Trotz Ankündigung für März 2000 war [Intalio](https://web.archive.org/web/20000301151011/http://www.exoffice.com/intalio.xml) am 10.04.2000 noch nicht verfügbar. Bei Intalio handelt es sich um einen Applicationserver, der einen sehr **offenen Ansatz** verfolgt.

- XML
- CORBA, DCOM
- Enterprise Java Beans
- Datenbank Backends (RDBMS, OODBMS, Directory Server)
- Sicherheit (OpenSSL, OpenCA, S/WAN)
- Standard APIs (JDBC, ODMG, JNDI)
- LDAP

Die beschriebene Funktionalität ist sehr umfassend. Deswegen sollte die Plattform Intalio nach der Freigabe einer Evaluation unterzogen werden.

Intalio kommt als Plattform für das IIS-Wissensmanagementsystem nicht in Frage.

#### Locomotive
Bei Locomotive (*locomotive.org*, URL funktioniert nicht mehr) handelt es sich um einen **Application Server**, der von GNU Entwicklern ins Leben gerufen wurde. Wie auch schon bei Midgard zuvor ist Locomotive nicht darauf ausgelegt, durch externe Module ergänzt zu werden, was bedeutet, dass alle Module selbst programmiert werden müssen.

Locomotive kommt als Plattform für das IIS-Wissensmanagementsystem nicht in Frage.

#### Star Office/Star Portal
Der Funktionsumfang des **Star Portal** konnte erst bei der CeBIT 2000 in Hannover abgeschätzt werden. Es handelt sich bei Star Office um ein vollwertiges Officepaket, das zusammen mit Star Portal alle wichtigen Funktionen eines **Groupwaresystems** abdeckt.

Bis zum Abschluss dieser Diplomarbeit lag von der Firma Star Division leider nur das sogenannte **Early-Access-Program** vor, das nur ausgewählten Firmen die Nutzung des Portals ermöglicht. Der Funktionsumfang dieses Produkts konnte aus diesem Grund nicht evaluiert werden.

### Eigene Programmierung
Neben bereits bestehenden Lösungen, kommerziell oder frei verfügbar, existiert die Möglichkeit, ein **System** von Grund auf **aus Einzelkomponenten** zu konzipieren. Bei dieser Vorgehensweise kann die Funktionsweise des Systems **optimal** an die Bedürfnisse der Firma **angepasst** werden.
