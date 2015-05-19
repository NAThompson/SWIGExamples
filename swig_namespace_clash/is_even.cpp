#include "is_even.hpp"

bool foo::is_even(int n)
{
    if(n % 2 == 0)
    {
      return true;
    }

    return false;
}

bool bar::is_even(int n)
{
  return foo::is_even(n);
}
