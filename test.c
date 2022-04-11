#include <stdio.h>

int main() {
    double sum = 0.0;
    for (int i = 1; i < 10000000; i++) {
        sum += 1.0 / ((double)i * i);
    }
    printf("π^2/6 = %f\n", sum);
    return 0;
}
