# Ausblick
Im Rahmen dieser Diplomarbeit wurde das Thema Wissensmanagement am Fraunhofer-Institut für Integrierte Schaltungen behandelt. Die Arbeit hatte das Ziel, ein Konzept für ein entsprechendes System zu erstellen und dieses in Form eines Prototypen zu realisieren.

Nach Durchführung einer Bestandsaufnahme wurde festgestellt, dass weder das bestehende Intranet noch die bis dahin kaum verbreitete Software Lotus Notes als Basis für ein Wissensmanagementsystem am IIS in Frage kamen. Gegen das Intranet sprach hauptsächlich der wenig interaktive Charakter und die stark veralteten und unübersichtlichen Inhalte.

Hauptgründe für die Entscheidung gegen Lotus Notes war die, aufgrund fehlender Akzeptanz und mangelnder Verbreitung der Clients, ungewisse Zukunft von Lotus Notes am IIS. Dieser Umstand führte zu der Entscheidung, eine neue Plattform zu konzipieren.

Nach Gewinnung eines Überblicks über vorhandene Systeme, wobei der Scherpunkt hauptsächlich auf freie und Open-Source-Systeme gelegt war, wurde zunächst die Entscheidung getroffen, ein System bestehend aus einzelnen Komponenten zu entwickeln (systemX I). Die Kernbestandteile dieses Systems waren eine SQL Datenbank (MySQL), ein Webserver (Apache) und eine XML-Processing Engine (Cocoon). Basierend auf diesen Elementen wurde begonnen, ein System zu entwickeln, in das sich über den Standard HTML andere Applikationen einbinden lassen.

Zwei Faktoren haben die Abkehr von dieser Lösung herbeigeführt. Mit den in der Entwicklung gemachten Erfahrungen konnte der Open-Source-Applicationserver ZOPE als geeignete Plattform identifiziert werden. Außerdem wurde erkannt, dass mit der vollständigen Entwicklung einer Plattform zu viel Zeit in die Entwicklung investiert werden musste, die dann bei den eigentlichen Wissensmanagementmethoden fehlte. Aus diesem Grund wurde entschieden, die definierten Methoden auf der Plattform ZOPE zu implementieren (systemX II).

Im Rahmen der Diplomarbeit wurden bereits einige Methoden ausgewählt, die auf der Plattform implementiert wurden. Ziel der Methoden war hauptsächlich, die für das Wissensmanagement sehr wichtigen Faktoren Kommunikation und Transparenz zu fördern. Der Funktionsumfang des Systems ist nicht als vollständig zu betrachten. Das System bietet vielmehr eine Plattform, auf deren Basis weitere Methoden implementiert werden können.

Um aufbauend auf den Erkenntnissen dieser Diplomarbeit Wissensmanagement am IIS zu etablieren, ist es wichtig, eine IT-Strategie für das Institut zu definieren. Hierfür wird eine Gruppe von Personen benötigt, die sich um die Definition einer solchen Strategie kümmert, und die mit finanziellen Ressourcen und Kompetenzen ausgestattet ist, um die Strategie zu realisieren.

Idealerweise sollte dieser Personengruppe ein Vertreter auf Leitungsebene angehören, der dort IT-Know-How einbringen kann und der außerdem die IT-Strategie der Institutsstrategie anpassen kann (zum Beispiel bei Expansion oder externen Standorten).

Erst wenn diese Strategie vorliegt, ist es sinnvoll, die Werkzeugwahl (systemX II, Lotus Notes, etc.) und deren Einführung anzugehen.

Der Verfasser dieser Arbeit ist überzeugt davon, dass die Werkzeugentscheidung nicht notwendigerweise Lotus Notes heißen muss. Das systemX II bietet im Vergleich zu Lotus Notes den großen Vorteil, dass es auch ohne Kenntnis von speziellen Programmiersprachen erweiterbar ist. Das bedeutet für das IIS, dass Notes Know-How nicht unbedingt teuer eingekauft werden muss, sondern die Mitarbeiter kleine Erweiterungen mit nur geringen Kenntnissen selbst implementieren können.
