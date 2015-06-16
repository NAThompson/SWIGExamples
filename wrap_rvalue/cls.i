//Name your module:
%module cls
%{
#define SWIG_FILE_WITH_INIT
  // required for STL vector<vector> mapping to work properly
  #define SWIG_PYTHON_EXTRA_NATIVE_CONTAINERS
  #include "cls.hpp"
%}

//Declare the functions you want to wrap:
%include "std_vector.i"
namespace std
{
  %template(DoubleVector) vector<double>;
}

%include "cls.hpp"
%ignore foo(foo &&);
