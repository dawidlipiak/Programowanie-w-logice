mezczyzna(korneliusz).
mezczyzna(leszek).
mezczyzna(mariusz).
mezczyzna(kacper).
mezczyzna(wieslaw).
mezczyzna(andrzej).
mezczyzna(radek).
mezczyzna(henryk).
mezczyzna(lukasz).
mezczyzna(mateusz).

kobieta(roksana).
kobieta(justyna).
kobieta(nina).
kobieta(lena).
kobieta(wieslawa).
kobieta(sylwia).
kobieta(ada).
kobieta(lucjana).
kobieta(elzbieta).

ojciec(leszek,korneliusz).
ojciec(mariusz,kacper).
ojciec(mariusz,nina).
ojciec(mariusz,lena).
ojciec(wieslaw,leszek).
ojciec(wieslaw,mariusz).
ojciec(wieslaw,andrzej).
ojciec(andrzej,radek).
ojciec(andrzej,ada).
ojciec(henryk,sylwia).
ojciec(henryk,elzbieta).
ojciec(lukasz,mateusz).

matka(roksana,korneliusz).
matka(justyna,kacper).
matka(justyna,nina).
matka(justyna,lena).
matka(wieslawa,leszek).
matka(wieslawa,mariusz).
matka(wieslawa,andrzej).
matka(sylwia,radek).
matka(sylwia,ada).
matka(lucjana,sylwia).
matka(lucjana,elzbieta).
matka(elzbieta,mateusz).

rodzic(X, Y) :- matka(X, Y); ojciec(X, Y). /* X jest rodzicem Y */
diff(X, Y) :- X \= Y.

jest_matka(X) :- matka(X,_).
jest_ojcem(X) :- ojciec(X,_).
jest_synem(X) :- mezczyzna(X), rodzic(_,X).
siostra(X,Y) :- kobieta(X), rodzic(Z,X), rodzic(Z,Y), diff(X,Y).
rodzenstwo(X,Y) :- rodzic(Z,X), rodzic(Z,Y), diff(X,Y).
dziadek(X,Y) :- mezczyzna(X), rodzic(X,Z), rodzic(Z,Y).