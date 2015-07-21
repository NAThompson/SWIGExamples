PYTHON_INCLUDE_PATH := $(dir $(shell find /usr/include -name "Python.h" | grep "python3"))
CXX:=g++ -std=c++11

all:
	swig -Wall -c++ -python inplace.i
	$(CXX) -g -fPIC -c inplace.c -o inplace.o
	$(CXX) -g -shared inplace.o -o libinplace.so
	$(CXX) -g -fPIC -c inplace_wrap.cxx -o inplace_wrap.o -I$(PYTHON_INCLUDE_PATH)
	$(CXX) -g -shared -L./ inplace_wrap.o -o _inplace.so -linplace -Wl,-rpath='$$ORIGIN'

clean:
	rm -f *.o *_wrap.cxx *.so
