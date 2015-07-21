%module is_even
%{
#include "is_even.hpp"
using namespace foo;
%}

bool is_even(int n);

//Guess what happens if you use this and get rid of using namespace foo? (Hint: It doesn't work.)
//bool foo::is_even(int n);
