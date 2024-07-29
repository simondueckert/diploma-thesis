## systemX I
### Überblick
Da, wie angesprochen, die Idee, das gesamte System selbst zu programmieren, verworfen wurde, sind einige der im Konzept erwähnten Funktionen nicht realisiert worden. Diese sind mit einem Stern (*) gekennzeichnet.

Die wichtigsten Elemente des Konzepts sind der frei verfügbare **Webserver Apache** und dessen Erweiterungen. Die Aufgabe eines Webservers ist es, Dokumente (normalerweise im HTML Format), die auf dem Server in einem bestimmten Verzeichnis liegen, über das sogenannte **HTTP-Protokoll** an einen Client (normalerweise ein HTML Browser) zu übertragen.

![systemX I - Überblick](./img/systemx-i-ueberblick.png)

Die Möglichkeiten, die mit der **HTML** Sprache zur Verfügung stehen, sind **eingeschränkt**. HTML ist darauf ausgelegt, **statischen Inhalt** bereitzustellen, womit Inhalt aus Datenbanken nicht verfügbar gemacht werden kann.

Außerdem liegt mit dem **HTTP**-Protokoll ein **zustandsloses** Protokoll vor, d.h. in dem Moment, in dem der Server dem Client eine Seite geliefert hat, ist die Verbindung beendet. Es besteht keine Möglichkeit, mehrere Seitenaufrufe, die von dem selben Browser durchgeführt werden, zueinander in Verbindung zu stellen (**Session Management**).

Session Management ist wichtig, wenn beispielsweise das Verhalten der Benutzer beobachtet oder Variablen von einem Seitenaufruf zum nächsten gespeichert werden sollen.

Ein weiterer Nachteil ist die Tatsache, dass in **HTML** Seiten **keine logischen Funktionen** eingebaut werden können. Es ist nicht möglich, bestimmte Elemente der Seite in Abhängigkeit von Parametern oder Variablen anzuzeigen oder Berechnungen mit diesen durchzuführen.

Aufgrund dieser Nachteile existiert bei den meisten HTTP-Servern die Möglichkeit, die Funktionalität des Servers zu erweitern. An dieser Stelle sollen mit dem **Common Gateway Interface** (CGI), der Sprache **PHP3** und **Java Servlets** drei Möglichkeiten näher betrachtet werden.

Das **CGI** stellt eine **definierte Schnittstelle** zwischen dem HTTP-Server und Anwendungen, die ein CGI-Interface besitzen, dar. Das bedeutet, dass Applikationen, die bestimmte Funktionen bereitstellen, in beliebigen Programmiersprachen verfasst sein können. Oft verwendet werden Perl, C und **Shell-Skripte**.

Die Kommunikation zwischen HTTP Server und CGI Applikation ist einfach. Der HTTP-Server wird so konfiguriert, dass er bei der Anforderung nach bestimmten Dateitypen (zum Beispiel mit der Endung .cgi), diese nicht direkt an den Client weitergibt, sondern sie erst durch eine Applikation bearbeiten lässt. Die CGI Applikation arbeitet die Anweisungen ab und erzeugt gültiges HTML, das dann über den Server an den Client zur Darstellung weitergereicht wird.

![CGI Funktionsweise](./img/cgi-funktionsweise.png)

CGI Applikationen stellen ein mächtiges Werkzeug dar, um interaktive Webapplikationen erstellen zu können. Bei Einsatz von Perl als Interpreter besteht die Möglichkeit, Protokolle, wie XML, SQL, LDAP, IMAP, etc. einzubinden. CGIs wurden für dieses Konzept nicht ausgewählt, da es trotz der Vielzahl der verfügbaren CGI-Applikationen keine Möglichkeit gibt, einzelne Funktionen, wie Diskussionsforen oder Datenbanken, einfach zu integrieren.

Eine andere Erweiterungsmöglichkeit bietet die Sprache **PHP3**. Sie kann als **Modul** an den **Apache**-Server angebunden werden und stellt eine sehr große Auswahl an Funktionen bereit. Um einen Eindruck über den Umfang von PHP3 zu vermitteln, folgt eine Aufstellung der für dieses Konzept verwendeten Funktionen.

- Zugriff auf die meisten verfügbaren Datenbanken
- LDAP
- SMTP
- NNTP
- Session Management
- Zugriff auf Filesystem und lokale Applikationen

Mit PHP3 stehen alle Funktionen, die für die Implementierung der Webplattform benötigt werden, zur Verfügung. Aus diesem Grund wurde die Entscheidung getroffen, **PHP3** als **Basis für** das **systemX I** zu wählen.

Die **objektorientierte Programmiersprache Java** kann im System an unterschiedlichen Stellen zum Einsatz kommen. An dieser Stelle sollen die Möglichkeiten von **Java Servlets** im Gegensatz zu sogenannten **Java Applets** betrachtet werden.

Bei Einsatz von Java Applets schickt der Server dem Client ein lauffähiges Javaprogramm. Auf dem Client muss eine sogenannte **virtuelle Java Maschine** vorhanden sein, die den Javacode ausführen kann. Dieses Vorgehen ist mit Nachteilen verknüpft.

Der Javacode muss zu jedem Client geschickt werden, der eine bestimmte Seite anfordert, wodurch sich eine erhöhte Netzbelastung ergibt. Außerdem muss sichergestellt werden, dass jede mögliche virtuelle Maschine den Code in gleicher Weise interpretiert, was nicht selbstverständlich ist.

In dem vorliegenden Fall wurden verschiedene Applets, die verwendet werden können, um Baumstrukturen darzustellen, mit verschiedenen Browsern und Plattformen getestet. **Keines der Applets hat auf allen Plattformen funktioniert**.

**Java Servlets** umgehen dieses Problem. Bei einem Servlet wird der Javacode schon **auf dem Server** ausgeführt und an den Client nur noch die HTML Ausgabe übertragen. Das **verringert** den **Netzbandbreitenbedarf** und **reduziert Inkompatibilitätsprobleme**. Allerdings wird auf dem Server **mehr Rechenleistung** benötigt, da dieser den Javacode interpretieren muss, was im vorliegenden Fall mit maximal 400 Nutzern unkritisch ist.

Die Servlettechnologie wurde in das System integriert, um den Standard XML unterstützen zu können. Der folgende Abschnitt soll klären, warum dieser Anspruch in einem Wissensmanagement sinnvoll ist.

Der größte Unterschied zwischen XML und HTML besteht darin, dass bei XML die verwendeten Tags definiert werden können, wohingegen bei **HTML** auf fest **definierte Tags** (H1, P, IMG, etc.) zurückgegriffen werden muss. Mit XML können den einzelnen Elementen in einem Dokument sinnvolle menschen- und maschinenlesbare Namen zugewiesen werden.

Die **Verarbeitung** von **XML** ist aus diesem Grund auch etwas **komplizierter** als bei HTML, denn es besteht die Notwendigkeit, in einer sogenannten Document Type Definition (DTD) die möglichen Elemente, die in einem Dokument vorkommen dürfen, zu definieren.

Außerdem sind zur **Darstellung** sogenannte **Stylesheets** zu erstellen, die ein XML Dokument in eine darstellbare Form umwandeln (zum Beispiel HTML, PDF, etc.). Eine gute Einführung in XML gibt [@seeboerger-weichselbaum_einsteigerseminar_2000].

Mit dem **Servlet Cocoon** steht ein Werkzeug zur Verfügung, mit dem man XML Dokumente auf Serverseite in andere Formate umwandeln kann. Neben der reinen Stylesheet Transformation bietet Cocoon auch die Möglichkeit Datenbanken oder LDAP Server abzufragen. Typisch für Cocoon ist der modulare Aufbau. Unterschieden werden **Producer, Processor und Formatter**.

Der **Producer** hat die Aufgabe ein XML Document bereitzustellen. Im einfachsten Fall wird ein XML-Dokument aus dem Filesystem gelesen. Es ist auch möglich, Daten aus Datenbank- oder LDAP-Abfragen in XML darzustellen. Cocoon liegen in der Basisversion einige Producer bei, die erweitert oder durch neue ergänzt werden können.

Über sogenannte **Formatting Instructions** (FI) wird Cocoon im Dokument mitgeteilt, welcher Processor verwendet werden soll. Ein Beispiel ist der XSLT Processor [@greenspan_understanding_2000], der ein XML Dokument unter Verwendung eines XSL Stylesheets transformieren kann.

Der **Formatter** sorgt am Ende der Kette für die eigentliche Formatierung des Inhalts. Mit unterschiedlichen Formattern können Formate wie HTML und PDF erzeugt werden.

### Implementierung der definierten Methoden
#### Whitepage Dienst
Der Whitepage Dienst soll nicht ausschließlich als Whitepage Dienst, sondern darüber hinaus auch in weiteren Anwendungen verwendbar sein. Hiermit kann das Problem der redundanten Datenhaltung gelöst werden. Jeder Bereich, der personenbasierte Daten verwaltet, greift im IIS auf eigene Datenbestände zurück, die nicht synchronisiert werden. Dies trifft sowohl auf Verwaltungsstellen, wie die Personalstelle, als auch auf Systemadministratoren, Abteilungssekretariate, etc. zu.

![Vermeidung redundanter Datenhaltung](./img/vermeidung-reduntanter-datenhaltung.png)

Der hier konzipierte Whitepage Dienst stellt eine **Datenbasis** zur Verfügung, die die Möglichkeit bietet, **personenbezogene Daten** aufzunehmen. Die hier definierten Attribute können bei Bedarf beliebig erweitert werden. Der Dienst beruht auf dem Standard **LDAP** und macht ihn deshalb zu einem plattform- und anwendungsübergreifenden Werkzeug.

LDAP wurde ursprünglich als Frontend zu den im Internet sehr verbreiteten X.500 Directory Servern konzipiert [@laird_lighting_2001]. Im Gegensatz zu diesen konnte LDAP über TCP/IP betrieben werden. Mittlerweile besteht bei den meisten LDAP-Servern auch die Möglichkeit, im sogenannten standalone-Mode, also ohne X.500-Backend, betrieben zu werden. Mit einem LDAP-Server sind verschiedene Anwendungen denkbar.

- Einheitliche und aktuelle Basis für viele der am IIS benötigten Erfassungen von **personenbezogenen** Daten. Dabei sind insbesondere datenschutztechnische Aspekte zu berücksichtigen.
- Bereitstellung eines **institutsweiten Adressbuchs**, das wesentlich aktueller als die im Moment verfügbaren ist, und auch Praktikanten, Studienarbeiter, etc. beinhaltet.
- Personen können nach **Fähigkeitsprofilen** gesucht werden. In das Profil können Ausbildung, durchgeführte Projekte, Fortbildungen und nichtfachliche Qualifikationen, wie zum Beispiel Sprachkenntnisse einfließen. Auch an dieser Stelle ist der Datenschutz zu beachten.
- Vorhalten der **Kontakte von abgegangenen Mitarbeitern** in einer **Alumni-Sektion**.

Prototypisch ist der Whitepage Dienst auf dem LDAP-Server **OpenLDAP** realisiert worden. Aufgrund des Standards LDAP, und besonders des **LDAP Interchange Format LDIF**, können die Daten jederzeit in einen anderen Server transferiert werden.

Jedem Mitarbeiter sind drei sogenannte **Objektklassen** zugeordnet. Eine Objektklasse ist eine Beschreibung der Parameter, die für eine Person möglich sind. Verwendet werden die standardisierten Objektklassen **person** (Stammdaten einer Person: Name, Vorname, etc.), **organizationalPerson** (Erweiterung von person um Daten, die in einer Organisation relevant sind: Raumnummer, Telefon, Email) und die selbstdefinierte Objektklasse **iisPerson**, die IIS spezifische Details festlegt.

Bereits mit diesem Prototypen ist es möglich, ein **Adressbuch** für den Netscape Navigator, Outlook Express und andere LDAP fähige Clients (zum Beispiel Eudora, pine) zur Verfügung zu stellen. Mit dem bestehenden Server war es außerdem sehr leicht möglich, die sogenannten **Netscape Roaming Profiles** anzubieten, einen Dienst, bei dem Einstellungen, Adressbuch und Bookmarks des Netscape Navigators mit dem Server synchronisiert werden können. Damit könne Nutzer beispielsweise auf Desktop-PC und Notebook auf die gleichen Ressourcen zurückgreifen.

Das Produkt **Enlist** bietet die Möglichkeit, den **LDAP-Server als ODBC Datenquelle** für anderen Applikationen, wie zum Beispiel das Microsoft Office, zur Verfügung zu stellen. Hiermit eröffnet sich für einzelne Bereiche die Möglichkeit, basierend auf SQL-Abfragen, personenbezogene Datenbestände lokal zu führen.

#### Diskussionsforum
Als Diskussionsforum kommt das Produkt [Phorum](https://www.phorum.org) zum Einsatz. Es erlaubt die Verwaltung von mehreren Diskussionsforen durch unterschiedliche Administratoren. Außerdem besteht die Möglichkeit, Phorum über die Erweiterung **phorummail** an existierende Maillisten anzubinden.

Alle **Diskussionsbeiträge** werden in einer **SQL-Datenbank** abgelegt (MySQL oder PostgreSQL). Es besteht die Möglichkeit, sich von Antworten auf eingestellte Beiträge per Mail informieren zu lassen.

#### Newssektion (*)
Die Newssektion wurde im systemX I nicht realisiert. Es war geplant, das Produkt [PHP3 News Skript](https://web.archive.org/web/20000918032114/http://mana.landofhaze.com/downloads/news/) einzusetzen, das auf PHP3 basiert und alle Beiträge in einer MySQL-Datenbank ablegt.

#### Privater Bereich (*)
Der private Bereich unterscheidet sich vom öffentlichen nur dadurch, dass der Besitzer als Administrator fungiert und somit über die Rechtevergabe entscheiden kann.

#### Zugang über Standardsoftware
Der komplette Funktionsumfang kann wie gefordert über einen **Standard-Webbrowser** bedient werden. Die Funktionalität wurde mit den Browsern Netscape Navigator und Internet Explorer auf den verfügbaren Plattformen getestet.

Auf alle datenbankgestützten Anwendungen kann über ODBC zugegriffen ODBC werden. Hierfür wird ein **MySQL-ODBC-Treiber** und eine ODBC fähige
Datenbank (zum Beispiel Microsoft Access) notwendig.

#### Möglichkeit datenbankgestützter Anwendungen
Um datenbankgestützte Anwendungen zu ermöglichen, benötigt man einen **Datenbankserver** (**DBMS, Database Management System**). Oftmals kommen **relationale Datenbanken** zum Einsatz, die sich durch die Verwendung der standardisierten Abfragesprache **SQL** auszeichnen. Diese ermöglicht Relationen zwischen den einzelnen Tabellen einer Datenbank. In diesem Konzept wird das DBMS MySQL verwendet, da es frei verfügbar und bereits in vielen Anwendungen im Einsatz und somit getestet ist.

Um auf den Datenbestand eines DBMS zugreifen zu können, werden keine ODBC speziellen Clients benötigt. ODBC bietet die Möglichkeit, durch sogenannte ODBC-Treiber, auf DBMS zuzugreifen. ODBC wurde ursprünglich für die
Plattform Windows konzipiert, steht mittlerweile aber auch auf anderen
Betriebssystemen zur Verfügung (unixODBC, iODBC). Für MySQL existieren derartige ODBC-Treiber.

Zur Konfiguration und Administration der MySQL-Datenbank ist kein dedizierter Client notwendig, da mit phpMyAdmin ein Webinterface zur Datenbank verfügbar ist.

#### Suchfunktionen
Die Suche auf den Datenbeständen des Systems wird durch Datenbankabfragen auf der Datenbank realisiert.

Zu jedem Element werden **Metadaten** erfasst, die entsprechende Informationen über das Element liefern. Unter Metadaten versteht man Daten, die das zu erfassende Element beschreiben.

Die Erfassung der Metadaten erfolgt teilweise automatisch und teilweise manuell. Die persönlichen Daten des Autors sind beispielsweise dadurch bekannt, dass dieser sich zuvor am System angemeldet hat.

Die Art des Elements kann dadurch bestimmt werden, dass dem Autor verschiedene Vorlagen, zum Beispiel für Berichte, URLs etc., angeboten werden. Weitere Daten, wie beispielsweise Schlagworte, müssen vom Autor gewählt werden.

Die Abfragemöglichkeit der Metadaten wird durch eine **Suchmaschine für externe Daten** ergänzt. Für das System wurde das Produkt [Udmsearch](https://web.archive.org/web/20000105124849/http://mysearch.udm.net) ausgewählt. Zur Auswahl stand außerdem das Produkt Harvest der University of Colorado. Im Vergleich ist Udmsearch komfortabler zu bedienen und bietet die Möglichkeit, seine **Daten in** einer **SQL-Datenbank** und nicht in proprietärem Format zu speichern. Udmsearch besteht aus drei Teilen:

Der **Gatherer** (Sammler) **fragt Daten** über das HTTP-, FTP- oder NNTP- Protokoll von anderen Rechnern **ab**. Mit einem Gatherer kann theoretisch das gesamte Internet indiziert und ein Suchdienst, ähnlich wie [Google](https://google.com), aufgebaut werden.

Für die Ergänzung des Metadatenbestands ist es sinnvoll, den Gatherer nur auf bestimmte Bereiche anzusetzen. In dieser Arbeit wurde beispielsweise das IIS-Intranet untersucht, wobei der Gatherer auf ca 16.000 Dokumente gestossen ist, davon cirka 3000 HTML-Dokumente.

Der zweite Bestandteil ist der **Indexer** (Indizierer), der Daten, die durch den Gatherer gesammelt wurden, indiziert. Der hier verwendete Index ist ein sogenannter **Volltextindex**, das bedeutet, der Indexer untersucht, wie oft bestimmte Wörter in dem zu indizierenden Dokument vorkommen. Dazu verwendet er eine **Stoppwortliste**, mit der Begriffe wie ich, du, ist, etc. aus dem Indiziervorgang ausgeschlossen werden. Die erzeugten Daten legt der Indexer in einer Datenbank ab. Von Udmsearch werden MySQL, Interbase, Oracle, PostgreSQL, miniSQL, Solid, Virtuosu und ODBC unterstützt.

Der dritte Bestandteil von Udmsearch ist die **Schnittstelle zum Benutzer**. Da das Backend, das die Metadaten aufnimmt, aus einer Datenbank besteht, werden die Ergebnisse auf eine Suchabfrage aus Datenbankabfragen gewonnen. Die Daten aus der Datenbank stehen auch anderen Applikationen zur Verfügung. Als Schnittstellen werden **PHP3, C und Perl** Module mitgeliefert, wodurch Udmsearch auf beinahe jedem Webserver einsetzbar ist.

**Hinweis:** Von der Möglichkeit, mit Udmsearch auch Dokumente mit anderem Format als HTML zu indizieren wurde bisher noch kein Gebrauch gemacht. Es bietet sich aber beispielsweise an, die Sektion mit den Online- Studien- und Diplomarbeiten auch zu indizieren. Dafür stehen Module für die Formate PDF, Postscript und Doc (MS Word) zur Verfügung.

### Verwendete Softwarepakete
Dieser Abschnitt soll einen zusammenfassenden Überblick über alle verwendete Softwarepakete und deren Bezugsquellen bieten. Alle hier aufgeführten Pakete sind Open Source oder in der Binärversion frei verfügbar.

1. [Apache](https://apache.org/) dient als HTTP-Server
2. [JServ](https://de.wikipedia.org/wiki/Apache_JServ_Protocol) ermöglicht den Einsatz von Java Servlets unter Apache
3. [Cocoon](https://cocoon.apache.org) ein Java Servlet, das die Verwendung von XML, XSL, SQL, JDBC und LDAP mit dem Apacheserver ermöglicht
4. [MySQL](https://www.mysql.com) ein Datenbankserver, der sehr große Datenmengen aufnehmen kann und für den wichtige Erweiterungen existieren (zum Beispiel [ODBC-Treiber](https://dev.mysql.com/downloads/connector/odbc/), Webinterface)
5. [phpMyAdmin](https://www.phpmyadmin.net/) als Weboberfläche für den Datenbankserver MySQL
6. [UDMsearch](https://web.archive.org/web/20000105124849/http://mysearch.udm.net) ein Indizierer für Webseiten, der seine Metadaten in einer Datenbank ablegt
7. [OpenLDAP](https://www.openldap.org/) ein frei verfügbarer LDAP Directory Server
8. [PHP3](https://de.wikipedia.org/wiki/PHP#PHP_3) Sprache zum Erstellen von interaktiven Webseiten. PHP wird als Modul des Apache Webserver eingesetzt und bietet Unterstützung für viele gängige Protokolle (zum Beispiel SQL für alle gängigen Datenbanken, NNTP, POP, IMAP, LDAP, etc.)
9. [Phorum](https://www.phorum.org) Diskussionsforum auf PHP-Basis, das alle Beiträge in einer MySQL Datenbank ablegt
