%module is_even
%{
#define SWIG_FILE_WITH_INIT
#include "is_even.hpp"
  using namespace foo;
%}

bool is_even(int n);
