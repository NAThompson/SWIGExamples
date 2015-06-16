//Name your module:
%module is_even
%{
  //Include your header files:
#include "is_even.hpp"
%}

//Declare the functions you want to wrap:
bool is_even(int n);
