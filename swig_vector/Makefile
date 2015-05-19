PYTHON_INCLUDE_PATH := $(dir $(shell find /usr/include -name "Python.h" | grep "python3"))
CXX:=g++ -std=c++11

all:
	swig -Wall -c++ -python example.i
	$(CXX) -g -fPIC -c example.cpp -o example.o
	$(CXX) -g -shared example.o -o libexample.so
	$(CXX) -g -fPIC -c example_wrap.cxx -o example_wrap.o -I$(PYTHON_INCLUDE_PATH)
	$(CXX) -g -shared -L./ example_wrap.o -o _example.so -lexample -Wl,-rpath='$$ORIGIN'

clean:
	rm -f *.o *_wrap.cxx *.so
