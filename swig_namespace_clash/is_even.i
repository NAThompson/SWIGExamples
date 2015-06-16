%module is_even
%{
  //From the SWIG docs:
  //The #define SWIG_FILE_WITH_INIT line inserts a macro that specifies that the resulting C file should be built as a python extension, inserting the module init code.
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

//Again, this standard syntax completely fails without error:
//bool foo::is_even(int n);
//bool bar::is_even(int n);
