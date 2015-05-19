all: say_hello.so

say_hello.so: say_hello.o
	gcc -shared -Wl,--no-undefined -o $@ $<

say_hello.o: say_hello.c
	gcc -fPIC -c $< -o $@

clean:
	rm -f *.so *.o
