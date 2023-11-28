%%
^[a-zA-Z0-9._%+-]+@(uas\.edu\.mx|hotmail\.com|gmail\.com|xyz\.[^.]+\.mx)$ {
printf("Correo electrónico válido: %s\n", yytext);
}
. {
printf("Correo electrónico inválido: %s\n", yytext);
}
%%

int yywrap() { return 1; }

int main() {
    yylex();
    return 0;
}