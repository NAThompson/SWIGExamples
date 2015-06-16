#!/usr/bin/env python3
import os
from ctypes import cdll, c_char_p


shared_obj = os.path.join(os.path.dirname(__file__), "say_hello.so")
# LoadLibrary takes an absolute path, or can find things in LD_LIBRARY_PATH:
say_hello_lib = cdll.LoadLibrary(shared_obj)
hello = say_hello_lib.say_hello

# This screws up:
print(hello())
print(str(hello()))

# So we need to tell the Python interpreter what we are expecting:
hello.restype = c_char_p
print(hello())

 
libc = cdll.LoadLibrary("libc.so.6")

# Annoying that this returns trash:
dir(libc)

# Challenge: What is wrong with the following code?
libc.printf("We are calling printf from within Python\n")
