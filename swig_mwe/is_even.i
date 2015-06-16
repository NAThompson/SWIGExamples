//Name your module:
%module is_even

 //Everything between %{ and }% is copied into the SWIG wrapper file, *_wrap.cxx.
%{
  //Include your header files:
#include "is_even.hpp"
%}

//Declare the functions you want to wrap:
bool is_even(int n);
