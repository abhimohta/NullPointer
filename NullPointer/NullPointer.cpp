// NullPointer.cpp : Defines the entry point for the console application.
//

#include "stdafx.h"
#include <stdio.h>

typedef struct _A {
	int *f;
} A;

void BadStruc(A *x) {
	A *y = x;
	y->f = NULL; //assign NULL
	*(x->f) = 1; //dereferencing NULL
}

int main()
{
	BadStruc(NULL);
	printf("Hello, World!\n");
	return 0;
}


