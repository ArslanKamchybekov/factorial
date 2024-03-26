#include <stdio.h>

extern unsigned long long calculate_factorial();

int main() {
    unsigned long long factorial_result = calculate_factorial();
    printf("Factorial: %llu\n", factorial_result);
    return 0;
}