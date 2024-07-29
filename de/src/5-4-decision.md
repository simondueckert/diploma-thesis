## Entscheidung
Weil es am IIS zu Beginn dieser Arbeit keine Plattform gab, auf der man ein Wissensmanagementsystem hätte implementieren können, musste die Einführung eines neuen Systems in Betracht gezogen werden.

Da mit dem damaligen Kenntnisstand keines der verfügbaren Produkte die definierten Anforderungen erfüllte, wurde die Entscheidung getroffen, ein System zu konzipieren und von Grund auf zu programmieren. Nur für Komponenten wie beispielsweise das Diskussionsforum wurden fertige Produkte gewählt werden.

Da für das Wissensmanagementsystem noch kein Namen gewählt wurde, wird dieser erste Ansatz im Folgenden **systemX I** genannt. Bis zur Einführung sollte die Entscheidung für einen Namen getroffen werden, um das System auch im sprachlichen Gebrauch zu etablieren.

Mit dem Fortschritt der Arbeit haben sich drei entscheidende Erkenntnisse ergeben.

1. Die Bewertung der bestehenden Systeme wurde in sinnvollem Umfang durch das eigene Design erst möglich. Viele Vorteile des Systems ZOPE haben sich durch die Konzeption eines neuen Systems erst als solche herausgestellt.
2. Einige der in Erwägung gezogenen Produkte haben sich erst im Verlauf der Arbeit in eine Richtung entwickelt, die ihren Einsatz rechtfertigen.
3. Mit der eigenen Entwicklung der Plattform werden zu viele Ressourcen gebunden. Dies hat zur Folge, dass man sich den Inhalten und Methoden nicht mehr in aussreichendem Maße widmen kann.

Aufgrund dieser Entwicklung wurde die Entscheidung getroffen, sich von der Eigenentwicklung abzuwenden und die gewünschten Inhalte und Methoden auf einer bestehenden Plattform-Lösung (ZOPE) zu implementieren. Die bis dahin unternommenen Anstrengungen sind aber keineswegs nutzlos gewesen, da sie eine sinnvolle Beurteilung der bestehenden Lösungen überhaupt erst ermöglicht haben.

Dieser auf ZOPE basierende Ansatz soll im Folgenden **systemX II** genannt werden.

Viele der im ersten Ansatz definierten Methoden, wie der White Page Dienst oder die externen Suchfunktionen, konnten ohne Mehraufwand in systemX II integriert werden.
