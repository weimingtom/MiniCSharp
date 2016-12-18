grammar miniCsharp;

mcSHARP : MAIN'('')''{'codigo'}';
         
codigo  : cmd';'
        | cmd';'codigo
        | cf 
        | cf codigo
        ;

cmd     : ler
        | escrever
        | declaracao
        | atr
        ;

declaracao : INT VAR
           | FLOAT VAR
           | DOUBLE VAR
           | STRING VAR
           | BOOL VAR
           |CHAR VAR
           | INT VAR '=' operacao
           | FLOAT VAR '=' operacao
           | DOUBLE VAR '=' operacao
           | INT VAR '=' NUMI
           | FLOAT VAR '=' NUMF
           | DOUBLE VAR '=' NUMF
           | STRING VAR '=' TEXTO
           | BOOL VAR '=' B
           | CHAR VAR '=' CARACTER
           ;

           
ler     : READ'('num')' 
        | READ'('texto')'
        | READ'('VAR')'
        | READ'('texto','VAR')'
        | READ'('texto','num')';

escrever: WHITE'('num')'
        | WHITE'('texto')'
        | WHITE'('VAR')';


cf     :IF'('cond')''{'codigo'}'
       |IF'('cond')''{'codigo'}'ELSE'{'codigo'}';


atr      : VAR '=' operacao
         | VAR '=' num 
         | VAR '=' B
         | VAR '=' TEXTO
         | VAR '=' CARACTER
         | VAR'++'
         | VAR'--'
         | VAR '+=' NUMI
         | VAR '-=' NUMI
         ;

operacao : operacaoAux
         | operacaoAux operacao
         ;

operacaoAux : VAR operadores VAR
            | num operadores VAR
            | VAR operadores num
            | num operadores num
            ;

operadores: '+'
          | '*'
          | '/'
          | '-'
          | '%'
          ;
        
                 
cond: comp
    | comp opComp
    ;

comp: VAR opComp VAR
    | VAR opComp num
    | num opComp VAR
    | num opComp num
    ;

opComp : '==' 
       | '!='
       | '>' 
       | '<'
       | '<='
       | '>='
       |'!' 
       ;

texto  :TEXTO;

num    : NUMF
       | NUMI;

//TOKENS

MAIN  : 'Main';
READ  : 'read'; 
WHITE : 'white';
INT   : 'int';
FLOAT : 'float';
DOUBLE: 'double';
STRING: 'string';
BOOL  : 'bool';
IF    : 'if';
ELSE  : 'else';
//TRUE  : 'true';
CHAR  : 'char';
B     : ('true'|'false');
NUMF  : [0-9]+([.]?[0-9]+|[0-9]*);
NUMI  : [0-9]+;
VAR   : ([_]|[a-zA-Z])([a-zA-Z0-9]|[_])*;
SOMA  : '+';
SUB   : '-';
DIV   : '/';
MULT  : '*';
REST  : '%';
E     : '&&';
OU    : '||';
CHA   : '{';
CHF   : '}'; 
PAA   : '(';
PAF   : ')';
EDL   : ';';
EQL   : '=';
EQLEQL: '==';
DIF   : '!=';
MAI   : '>';
MEN   : '<';
MENEQL: '<=';
MAIEQL: '>=';
NEG   : '!';
ACR   : '++';
DEC   : '--';
ACRMORE: '+=';
DECMORE: '-=';
SEP   : ',';
CARACTER: [']('""'|~'"')['] ;
TEXTO : '"' ('""'|~'"')* '"';
WS : (' '|'\t'|'\r'?'\n')+ -> skip;
COMMENT: '//' .*? '\n' -> skip;
COMMENTBLOCK: '/*' .*? '*/' -> skip;