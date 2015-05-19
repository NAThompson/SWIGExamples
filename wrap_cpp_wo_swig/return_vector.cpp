#include <vector>

extern "C"
{
  std::vector<double> point3d()
  {
    std::vector<double> p{1.2, 3.4, 7.8};

    return p;
  }
}
