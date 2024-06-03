method between (p:int, r:int) returns (q:int)
requires r-p > 1
ensures p < q < r
{
    q := p + 1;
}
/*1.
Acest program primeste doua numere intregi p si r ca parametri si returneaza un numar îintreg q.
Preconditia (requires) specifica ca diferenta dintre r și p trebuie sa fie mai mare decât 1.
Postconditia (ensures) specifica ca valoarea returnata q trebuie sa fie intre p și r, adica p < q < r.

2.
Daca schimbam cu q := p + 2, atunci funcția nu mai respect postconditia.
Conform postconditiei, trebuie sa avem p < q < r. Daca q := p + 2, atunci q va fi mai mare cu doi 
decât p. Deci, pentru ca postconditia sa fie indeplinita, r ar trebui sa fie mai mic decât p + 2.

Un exemplu care incalca aceasta postconditie ar fi p = 3, r = 5
Daca aplicam formula q := p + 2, obtinem q = 3 + 2 = 5. 
In acest caz q nu este mai mic decat r, astfel postconditia nu este indeplinita.

3.
Daca schimbam preconditia cu r - p >= 1 in loc de r - p > 1, atunci aceasta va permite si cazul in care 
diferenta dintre r și p este exact 1. 

Un contraexemplu ar fi p = 3, r = 4
Aceste valori satisfac noua preconditie r - p >= 1, deoarece 4 - 3 = 1. 
Totusi, atunci cand aplicam corpul metodei q := p + 1, obtinem q = 3 + 1 = 4.
In acest caz q nu este mai mic decat r, deoarece q = r, iar postconditia nu este indeplinita.*/

