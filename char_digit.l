%{
    #include <stdio.h>
    %}

    %%
    [0-9]
        { printf("%s is a Digit\n", yytext); }

        [a-zA-Z]
            { printf("%s is a Character\n", yytext); }

            [ \t\n]
                ;

                .
                    { printf("%s is Special Symbol\n", yytext); }

                    %%

                    int main()
                    {
                            printf("Enter text:\n");
                                yylex();
                                    return 0;
                    }

                    int yywrap()
                    {
                            return 1;
                    }
                    }
                    }
}