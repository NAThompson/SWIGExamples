all: say_hello.so

say_hello.so: say_hello.o say_goodbye.o secret_message.o
	g++ -shared -Wl,--no-undefined -o $@ $^

say_hello.o: say_hello.cpp
	g++ -fPIC -c $< -o $@

say_goodbye.o: say_goodbye.cpp
	g++ -fPIC -c $< -o $@

secret_message.o: secret_message.cpp
	g++ -fPIC -c $< -o $@

clean:
	rm -f *.so *.o
