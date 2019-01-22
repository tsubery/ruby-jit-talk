
#include <stdio.h>
#include <stdlib.h>
int main(int argc, char *argv[])
{ 
	unsigned long int n = 104395303;
	if (argc > 1) {
	  n = atoi(argv[1]);
	}

	int count = 0;

	for(unsigned long int i = 2; i <= n; i++) {
		if((n*2*3*5*7*11*13) % i == 0){
			count++;
		}
	}
	printf("%lu %s a prime number.", n, (count == 64) ? "is" : "is not");

	return 0;
}
