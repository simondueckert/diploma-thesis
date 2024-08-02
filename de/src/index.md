**Titel:** Entwurf und prototypische Realisierung eines mit der Beschreibungssprache XML erstellten Werkzeugs für die Verwaltung informationstechnischen Wissens

**Bearbeiter:** [Simon Dückert](https://www.linkedin.com/in/simondueckert/)

**Hochschule:** [Friedrich-Alexander-Universität Erlangen-Nürnberg](https://www.fau.de/), [Lehrstuhl für Informationstechnik mit dem Schwerpunkt Kommunikationselektronik](https://www.like.tf.fau.de/) (Stiftungslehrstuhl)

![Simon Dückert am 23.07.2024 vor dem ehemaligen Fraunhofer-IIS-Gebäude am Weichselgarten 3 in Erlangen/Tennenlohe](./img/2024-07-23-simon-beim-iis.JPG)

**Update 02.08.2024:** Im Rahmen eines Vortrags mit Workshop zu Wissensmanagement im Fraunhofer IIS am 23.07.2024 entstand die Idee, diese Diplomarbeit als Webversion offen zugänglich zu machen. Die Umsetzung erfolgte mit dem Ansatz der [lernOS](https://lernos.org)-Produktionskette, indem das [originale PDF-Dokument](https://cloud.dueckert.eu/s/kEHR4wpSAxxMkBq) in [Markdown](https://de.wikipedia.org/wiki/Markdown) übertragen und daraus diese Webversion und alle in der Navigation unter *Download* verfügbaren Versionen erzeugt wurden.

**Lizenz:** Diese Diplomarbeit steht unter der Lizenz CC BY 4.0. Unter der Adresse [creativecommons.org/licenses/by/4.0/deed.de](https://creativecommons.org/licenses/by/4.0/deed.de) findest Du damit verbundenen Erlaubnisse und Bedingungen. Als Namensnennung ist *„Dückert, S.: Entwurf und prototypische Realisierung eines mit der Beschreibungssprache XML erstellten Werkzeugs für die Verwaltung informationstechnischen Wissens. Diplomarbeit. 2000.“* mit einem Link auf [https://simondueckert.github.io/diploma-thesis/de/](https://simondueckert.github.io/diploma-thesis/de/) vorgesehen.

![Lizenz Creative Commons Namensnennung 4.0 (CC BY)](./img/CC-BY.png)

---

> Wenn du ein Schiff bauen willst, fang nicht an, Holz zusammenzutragen, Bretter zu schneiden und Arbeit zu verteilen, sondern wecke in den Männern (und Frauen) die Sehnsucht nach dem großen, weiten Meer.
>
> *[Antoine de Saint-Exupery](https://de.wikipedia.org/wiki/Antoine_de_Saint-Exup%C3%A9ry)*

---

# Kurzfassung

Die vorliegende Arbeit beschäftigt sich mit dem Thema Wissensmanagement aus technischer und sehr pragmatischer Sicht. Im Rahmen dieser Arbeit umfasst Wissensmanagement alle Anstrengungen, die unternommen werden, um Mitarbeiter mit dem Wissen zu versorgen, das sie benötigen, um für das Unternehmen mit optimaler Effizienz tätig zu sein.

Das Ziel war, eine Plattform zu entwickeln, die im [Fraunhofer Institut für Integrierte Schaltungen](https://www.iis.fraunhofer.de), im Folgenden IIS genannt, die Funktion eines Wissensmanagementsystems übernehmen kann. Nach Analyse der Ausgangssituation und der vorhandenen Wissensquellen musste zwischen der Implementierung auf einem kommerziellen System, auf einem Open-Source-System oder der Entwicklung einer neuen Plattform entschieden werden.

Zunächst wurde die Eigenentwicklung fokussiert. Basierend auf dem Webserver Apache, der Skriptsprache PHP3, der Servletengine Jserv, der XML-Render-Engine Cocoon und der relationalen Datenbank mySQL wurde ein Prototyp erstellt. Es wurde erkannt, dass zu viel Zeit in die Entwicklung der Plattform investiert werden musste, die dann bei der Konzeption der Wissensmanagement-Methoden fehlte.

Aus diesem Grund wurde die Eigenentwicklung eingestellt und der Open-Source Application Server ZOPE als Plattform herangezogen. Dieser eignet sich insbesondere durch seine offene Architektur, seine einfache Erweiterbarkeit und die umfassende Unterstützung von Standards (SQL, LDAP, FTP, HTTP, WebDAV, SOAP, XML, XML-RPC, RSS).

Am Ende der Arbeit lag ein voll funktionsfähiger Prototyp vor, der zur Einführung von Wissensmanagement verwendet werden kann. Wichtig ist festzuhalten, dass diese Arbeit nicht als abgeschlossen gelten kann. Vielmehr müssen die Ansätze und Methoden in einem kontinuierlichen Verbesserungsprozess den Bedürfnissen angepasst werden.

Nachdem alle benutzten Applikationen entweder Open-Source oder frei verfügbar sind, eignet sich dieses Konzept auch für kleiner Firmen oder Lehreinrichtungen.
