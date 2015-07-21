#include "example.hpp"

#include <cmath>

double foo::l1(std::vector<double> z)
{
    double l1 = 0;
    for(auto x : z)
    {
        l1 += std::abs(x);
    }
    return l1;
}
