%module is_even
%{
#define SWIG_FILE_WITH_INIT
#include "is_even.hpp"
using namespace foo;
%}

bool is_even(int n);

//Guess what happens if you use this and get rid of using namespace foo?
//bool foo::is_even(int n);
