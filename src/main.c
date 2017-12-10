#include <stdio.h>

int main()
{
	double firstNum, secondNum, product;
	printf("Enter two number: ");

	// Store two floating point
	scanf("%lf %lf", &firstNum, &secondNum);

	// Performs multi and store result
	product = firstNum * secondNum;

	// Result up to 2 dec.
	printf("Product = %.2lf", product);

	return 0;
}