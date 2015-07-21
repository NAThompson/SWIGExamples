#include "is_even.hpp"

bool is_even(int n)
{
    if(n & 1)
    {
      return false;
    }

    return true;
}
