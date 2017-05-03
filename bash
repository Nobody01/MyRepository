#!/bin/bash

# si vuole far stampare una scritta
echo 'ciao mondo ';

#si vuole  creare una variabile e la si vuole stampare
var='5';
echo ${var};

#si vuole creare una variabile e gli si vuole far stampare la somma di essa e un numero
var01=45;
var01=$(($var01+15));
echo "$var01";

#si vuole concatenare del testo nelle variabili
var02='ciao mondo ';
var02=$var02'? ';
echo "$var02";

#si vuole creare un file myfile.txt e si vuole veridicarne l'esistenza
>myfile.txt
if [ -f myfile.txt ]; then
echo 'esiste';
else
echo 'non esite';
fi

# si vuole scrivere in append su un file di testo
echo 'mannaggia ' >> myfile.txt
echo 'mona chi legge' | tee -a  myfile.txt

#si utilizzi il for per creare 10 file mannaggia e con il while si vogliono rimuovere 9 di essi
for (( c=1; c<=10; c++))
do
  > file$c;
done
a=1;
while [ "$a" -le 9 ]; do
 rm file$a;
 a=$(( $a + 1 ))
done

#inseriamo 1 parametro in al inserimento della chiamata dello script 
echo $1;


exit;
