/*(a) merge functia
Decrementeaza x cu 1 de fiecare data, asigurandu-se ca x va fi mai mic de 10, terminandu-se astfel.
*/
function F(x: int ): int {
 if x < 10 then x else F(x - 1)
}

/*(b) merge
t scade x cu 2 de fiecare data. Pentru x nenegativ, va ajunge in cele din urma la o valoare mai mica decat 0, terminand recursiunea.
*/
function G(x: int ): int {
 if 0 <= x then G(x - 2) else x
}

/*(c) nu merge 
Adaugarea de scaderi x + 60 ajuta verificatorul sa inteleaga ca functia se va termina, deoarece x + 60 scade strict cu fiecare apel.
*/
function H(x: int ): int
decreases x+60 
{
 if x < -60 then x else H(x - 1)
}

/*(d) merge
Functia scade fie x, fie y la fiecare apel recursiv, asigurand terminarea deoarece x si y sunt numere naturale.
*/
function I(x: nat , y: nat ): int {
 if x == 0 || y == 0 then 12
 else if x % 2 == y % 2 then
 I(x - 1, y)
 else
 I(x, y - 1) 
 }

/*(e) merge
Functia scade fie x, fie y la fiecare apel recursiv, asigurand terminarea deoarece x si y sunt numere naturale.
*/
function J(x: nat , y: nat ): int {
 if x == 0 then y
 else if y == 0 then
 J(x - 1, 3)
 else
 J(x, y - 1)
}

/*(f) merge
Functia scade x, y sau z la fiecare apel recursiv, asigurand terminarea deoarece sunt numere naturale.
*/
function K(x: nat , y: nat , z: nat ): int {
 if x < 10 || y < 5 then x + y
 else if z == 0 then
 K(x - 1, y, 5)
 else
 K(x, y - 1, z - 1)
}

/*(g) nu merge
Adaugarea scaderilor 100 - x ajuta verificatorul sa inteleaga ca functia se va incheia, deoarece 100 - x scade strict cu fiecare apel.
 */
function L(x: int ): int 
decreases 100 - x
{
 if x < 100 then L(x + 1) + 10 else x
}