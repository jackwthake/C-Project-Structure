CC=gcc
CFLAGS=-Wall -g
EXE_NAME=hello_world

build: bin bin/main.o
	$(CC) $(CFLAGS) bin/*.o -o bin/$(EXE_NAME)

bin/main.o: src/main.c
	$(CC) $(CFLAGS) -c src/main.c -o $@

clean: 
	rm -rf bin/*.o bin/$(EXE_NAME)

bin:
	mkdir -p $@
