#include <stdio.h>
#include <stdlib.h>
#include <pthread.h>
#include <unistd.h>

#define NUM_THREADS 5 // Number of threads to create

void* print_thread_info(void* thread_id) {
	long tid = (long) thread_id;
	printf("Thread %ld is running.\n", tid);
	for (int j = 0; j <= 10; j++){
		printf("Thread %ld: %d\n", tid, j);
	} // Simulating some work
	printf("Thread %ld has finished execution.\n", tid);
	pthread_exit(NULL);
}

int main() {
	pthread_t threads[NUM_THREADS];
	int status;
	long i;

	printf("Main Thread: Creating %d threads...\n", NUM_THREADS);

	for(i = 0; i < NUM_THREADS; i++) {
		status = pthread_create(&threads[i], NULL, print_thread_info, (void*) i);
		if(status) {
			printf("Error: Unable to create thread %ld, statues %d\n", i, status);
			exit(EXIT_FAILURE);
		}
	}

	for(i = 0; i < NUM_THREADS; i++) {
	pthread_join(threads[i], NULL);
	}

	printf("Main Thread: All threads have finished execution.\n");
	return 0;
}
