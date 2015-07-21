#!/usr/bin/env python3

import inplace
import numpy
a = numpy.ones(20)
print("Vector before doubling:")
print(a)

inplace.inplace(a)

print("Vector after doubling:")
print(a)
