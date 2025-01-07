// This program creates 2 process, 1 parent process and 1 child process

#include<stdio.h>
#include<unistd.h>

int main() {
	fork();
	printf("\nHello\n");
	return 0;
}