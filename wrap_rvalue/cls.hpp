#include <vector>
#include <utility>
#include <cmath>

class foo
{
private:
  std::vector<double> v;
public:
  foo(int s) 
  {
    v.resize(s);
    for(int ii = 0; ii < v.size(); ++ii)
    {
        v[ii] = ii*2;
    }
  }

  foo(foo && other_foo) : v(std::move(other_foo.v)) {}

  double l1() const
  {
    double l1 = 0;
    for(auto x : v)
    {
      l1 += std::abs(x);
    }
    return l1;
  }

  double l2() const
  {
    double l2 = 0;
    for(auto x : v)
    {
        l2 += x*x;
    }
    return std::sqrt(l2);
  }

  double l_inf() const
  {
    double m = 0;
    for(auto x : v)
    {
        m = std::abs(x) > m ? std::abs(x) : m;
    }
    return m;
  }  
};
