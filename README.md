# MiniCSharp

#### Construção de um Compilador Baseado na liguagem C# para a materia de Compiladores
#### Curso de Ciência da Computação
#### UENP- CLM - Bandeirantes - PR

#### Colaboradores

* **Erikson Júlio de Aguiar**;
* **Eduardo Pacheco Beraldo**.

## Especificação da Gramática

###### 1. Ler -> Console.Read()
###### 2. Escrever -> Console.Write()
###### 3. inteiro -> int
###### 4. ponto fluante -> float
###### 5. duplo ponto fluante -> double
###### 6. caracter -> char
###### 7. texto -> string
###### 8. lógico -> bool
###### 9. Soma -> +
###### 10. Subtração -> -
###### 11. Multiplicação -> *
###### 12. Divisão -> /
###### 13. Resto -> %
###### 14. E lógico -> &&
###### 15. OU lógico -> ||
###### 16. Controle de fluxo -> if
###### 16. Controle de fluxo -> if(cond){ }else{ }
###### 17. Inicio -> public static void main(){ "programa"}

###### Exemplo:

**public void main{
  Console.Write("Ola mundo");
}**

### Gramática

<MC#> -- main{<CODIGO>}
<CODIGO> -- <CMD> | <CMD> EOL <CODIGO>
<CMD> -- <LER> | <ESCREVER> | <INTEIRO> | <PTFLUT> | <DPTFLUT> | <CHAR> | <STRING> | <BOOL> | <OP> | <OPL> | <CF> 
<LER> -- Console.Read(<NUM>) | Console.Read(<TEXTO>) | Console.Read(<VAR>)
<ESCREVER> -- Console.Write(<NUM>) | Console.Write(<TEXTO>) | Console.Write(<VAR>)
<INTEIRO> -- INT <VAR>
<PTFLUT> -- FLOAT <VAR>
<DPTFLUT> -- DOUBLE <VAR>
<CHAR> -- CHAR <VAR>
<STRING> -- STRING <VAR>
<BOOL> -- BOOL <VAR>
<OP> -- <VAR> + <VAR> | <VAR> - <VAR> | <VAR> / <VAR> | <VAR> * <VAR> | <VAR> % <VAR>
<OPL> -- <VAR> && <VAR> | <VAR> || <VAR> 
<CF> -- IF(<OPL>){<CODIGO>} | IF(<OPL>){<CODIGO>}ELSE{<CODIGO>}
<TEXTO> -- TEXTO
<NUM> -- NUM | NUM,NUM


### Tabela de Tokens

**Token** | **Padrão** | **Atributo**
----------|------------|-------------
val       |val         |val


### Análise Lexica + Sintática

[Gals]: http://gals.sourceforge.net/

**Para fazer a analise léxica e sintática utilizaremos do gerador de analisador léxico e sintático [Gals], cujo o mesmo tem suporte a C++, java e Delphi, para a nossa abordagem utilizaremos a linguagem C++.**
