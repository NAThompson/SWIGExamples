%module is_even
%{
#define SWIG_FILE_WITH_INIT
#include "is_even.hpp"
%}

%rename(foo_is_even) foo::is_even;
%rename(bar_is_even) bar::is_even;

namespace foo
{
bool is_even(int n);
}

namespace bar
{
bool is_even(int n);
}
