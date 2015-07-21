CC=gcc

all: say_hello.so

say_hello.so: say_hello.o
	$(CC) -shared -Wl,--no-undefined -o $@ $<

say_hello.o: say_hello.c
	$(CC) -fPIC -c $< -o $@

clean:
	rm -f *.so *.o
