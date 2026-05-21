#include <stdio.h>
#include <string.h>

int main() {
    char type[10];
    char variable[10];
    char value[20];

    printf("Enter declaration (example: int x 5):\n");
    scanf("%s %s %s", type, variable, value);

    if(strcmp(type, "int") == 0) {

        for(int i = 0; value[i] != '\0'; i++) {

            if(value[i] < '0' || value[i] > '9') {
                printf("Semantic Error: Invalid integer assignment\n");
                return 0;
            }
        }

        printf("Semantic Analysis Successful\n");
    }

    return 0;
}