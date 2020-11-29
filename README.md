# GUI_Interface - .jar fil

I mappen GUI_Interface ligger der eksempler på hvordan du kan bruge koden til at lave forskellig sidede terninger og rolle dem.

Navnet på .jar filen er GUI_Interface, og den skal du bare hive over i dit projekt, så er den good to go. 


Du bruger .jar filen ved at f.eks. at skrive: 

"GUI_Interface bib = new GUI_Interface();"

"GUI_Interface.Button d20 = bib.new Button(340, 100, 150, 50, "Slå med 20s terning!", this);"

For at tilføje en action, så skriver du f.eks. "d20.addAction(new GUI_Interface.Action() {}"

Du har nu importeret GUI_Interface med navnet bib, og lavet en knap der roller en 20-sidet terning


.display, .click og GUI_Interface.Action er de 3 forskellige metoder/funktioner du kan kalde fra bibliteket

.display smidder du i en draw() funktion, og .click passer ned i en mousePressed() funktion
