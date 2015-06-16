PYTHON_INCLUDE_PATH := $(dir $(shell find /usr/include -name "Python.h" | grep "python3"))

all:
	#Have swig create the wrapper; *_wrap.cxx and is_even.py:
	swig -c++ -python is_even.i
	#Compile the source:
	g++ -fPIC -c is_even.cpp -o is_even.o
	#Put the compiled code in a shared object:
	g++ -shared -Wl,--no-undefined -o libis_even.so is_even.o
	#Compile the wrapper, with your favorite Python interpreter's include path:
	g++ -fPIC -c is_even_wrap.cxx -o is_even_wrap.o -I$(PYTHON_INCLUDE_PATH)
	#Put the compiled wrapper code into a shared object, prepended by _
	g++ -shared -Wl,--no-undefined -L/usr/lib/python3.4/config-3.4m-x86_64-linux-gnu -L./ is_even_wrap.o -o _is_even.so -lis_even -lpython3.4m -Wl,-rpath='$$ORIGIN'

clean:
	rm -f *.o *wrap.cxx *.so is_even.py
