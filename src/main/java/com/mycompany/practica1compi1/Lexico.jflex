package com.mycompany.practica1compi1;
import java_cup.runtime.*;


%%
%class Lexico
%public 
%line 
%char 
%cup 
%unicode
%ignorecase

%init{ 
    yyline = 1; 
    yychar = 1; 
%init} 

BLANCOS=[ \r\t]+
ENTERO=[0-9]+
ID = [A-Za-z][A-Za-z0-9_]* 




%%
"(" {return new Symbol(sym.PARIZQ,yyline,(int)yychar, yytext());} 
")" {return new Symbol(sym.PARDER,yyline,(int)yychar, yytext());} 
"-" {return new Symbol(sym.MENOS,yyline,(int)yychar, yytext());}
"+" {return new Symbol(sym.MAS,yyline,(int)yychar, yytext());} 
"*" {return new Symbol(sym.POR,yyline,(int)yychar, yytext());}
"/" {return new Symbol(sym.DIV,yyline,(int)yychar, yytext());}
"," {return new Symbol(sym.COMA,yyline,(int)yychar, yytext());}
"azul" {return new Symbol(sym.AZUL,yyline,(int)yychar, yytext());}
"rojo" {return new Symbol(sym.ROJO,yyline,(int)yychar, yytext());}
"amarillo" {return new Symbol(sym.AMARILLO,yyline,(int)yychar, yytext());}
"verde" {return new Symbol(sym.VERDE,yyline,(int)yychar, yytext());}
"negro" {return new Symbol(sym.NEGRO,yyline,(int)yychar, yytext());}
"morado" {return new Symbol(sym.MORADO,yyline,(int)yychar, yytext());}
"cafe" {return new Symbol(sym.CAFE,yyline,(int)yychar, yytext());}
"rosa" {return new Symbol(sym.ROSA,yyline,(int)yychar, yytext());}
"celeste" {return new Symbol(sym.CELESTE,yyline,(int)yychar, yytext());}
"linea" {return new Symbol(sym.LINEA,yyline,(int)yychar, yytext());}
"curva" {return new Symbol(sym.CURVA,yyline,(int)yychar, yytext());}
"graficar" {return new Symbol(sym.GRAFICAR,yyline,(int)yychar, yytext());}
"circulo" {return new Symbol(sym.CIRCULO,yyline,(int)yychar, yytext());}
"cuadrado" {return new Symbol(sym.CUADRADO,yyline,(int)yychar, yytext());}
"rectangulo" {return new Symbol(sym.RECTANGULO,yyline,(int)yychar, yytext());}

"poligono" {return new Symbol(sym.POLIGONO,yyline,(int)yychar, yytext());}
"animar" {return new Symbol(sym.ANIMAR,yyline,(int)yychar, yytext());}
"objeto" {return new Symbol(sym.OBJETO,yyline,(int)yychar, yytext());}
"anterior" {return new Symbol(sym.ANTERIOR,yyline,(int)yychar, yytext());}


\n {yychar=1;}

{BLANCOS} {} 
{ENTERO} {return new Symbol(sym.ENTERO,yyline,(int)yychar, yytext());}
{ID} {return new Symbol(sym.ID,yyline,(int)yychar, yytext());} 

. {
    System.out.println("Este es un error lexico: "+yytext()+", en la linea: "
    + yyline + ", en la columna: "+yychar);
    }


