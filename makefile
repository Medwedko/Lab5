CC=gcc
CFLAGS=-I.

all: withMutex withoutMutex factorial dead

withMutex : mutex.c
	$(CC) withMutex.c -o withMutex -lpthread $(CFLAGS)
	
withoutMutex : mutex.c
	$(CC) withoutMutex.c -o withoutMutex -lpthread $(CFLAGS)
	
factorial : factorial.c
	$(CC) factorial.c -o factorial -lpthread $(CFLAGS)

dead : dead.c
	$(CC) dead.c -o dead -lpthread $(CFLAGS)

clean :
	rm withMutex withoutMutex factorial dead