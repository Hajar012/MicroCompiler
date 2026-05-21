#include <stdio.h>

int main() {

    char a='a', b='b', c='c';

    printf("Input Expression:\n");
    printf("x = a + b * c\n\n");

    printf("Three Address Code:\n");

    printf("t1 = %c * %c\n", b, c);
    printf("t2 = %c + t1\n", a);
    printf("x = t2\n");

    return 0;
}