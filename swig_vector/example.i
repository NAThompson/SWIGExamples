%module example
%{
  #include "example.hpp"
%}

%include "std_vector.i"
namespace std
{
   %template(IntVector) vector<int>;
   %template(DoubleVector) vector<double>;
}

%include "example.hpp"
