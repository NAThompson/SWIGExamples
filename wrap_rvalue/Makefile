PYTHON_INCLUDE_PATH := $(dir $(shell find /usr/include -name "Python.h" | grep "python3"))

all:
	swig -Wall -c++ -python cls.i
	g++ -std=c++11 -fPIC -c cls.cpp -o cls.o
	g++ -std=c++11 -shared -Wl,--no-undefined -o libcls.so cls.o
	g++ -std=c++11 -fPIC -c cls_wrap.cxx -o cls_wrap.o -I$(PYTHON_INCLUDE_PATH)
	g++ -std=c++11 -shared -Wl,--no-undefined -L/usr/lib/python3.4/config-3.4m-x86_64-linux-gnu -L./ cls_wrap.o -o _cls.so -lcls -lpython3.4m -Wl,-rpath='$$ORIGIN'

clean:
	rm -f *.o *wrap.cxx *.so cls.py
