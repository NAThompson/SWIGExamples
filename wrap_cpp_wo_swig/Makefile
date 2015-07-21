CXX=g++

all: say_hello.so

say_hello.so: say_hello.o say_goodbye.o secret_message.o return_vector.o
	$(CXX) -shared -Wl,--no-undefined -o $@ $^

say_hello.o: say_hello.cpp
	$(CXX) -std=c++11 -fPIC -c $< -o $@

say_goodbye.o: say_goodbye.cpp
	$(CXX) -std=c++11 -fPIC -c $< -o $@

secret_message.o: secret_message.cpp
	$(CXX) -std=c++11 -fPIC -c $< -o $@

return_vector.o: return_vector.cpp
	$(CXX) -std=c++11 -fPIC -c $< -o $@

clean:
	rm -f *.so *.o
