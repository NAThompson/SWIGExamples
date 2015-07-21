PYTHON_INCLUDE_PATH := $(dir $(shell find /usr/include -name "Python.h" | grep "python3"))
CXX=g++
all:
	swig -Wall -c++ -python is_even.i
	$(CXX) -fPIC -c is_even.cpp -o is_even.o
	$(CXX) -shared is_even.o -o libis_even.so
	$(CXX) -fPIC -c is_even_wrap.cxx -o is_even_wrap.o -I$(PYTHON_INCLUDE_PATH)
	$(CXX) -shared -L./ is_even_wrap.o -o _is_even.so -lis_even -Wl,-rpath='$$ORIGIN'

clean:
	rm -f *.o *wrap.cxx *.so is_even.py
