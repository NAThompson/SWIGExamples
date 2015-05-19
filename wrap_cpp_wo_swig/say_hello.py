#!/usr/bin/env python3
import os
from ctypes import cdll, c_char_p


shared_obj = os.path.join(os.path.dirname(__file__), "say_hello.so")

say_hello_lib = cdll.LoadLibrary(shared_obj)

#We have to use the mangled symbol to allow Python to find the function:
hello = say_hello_lib._Z9say_hellov

# So we need to tell the Python interpreter what we are expecting:
hello.restype = c_char_p
print(hello())

goodbye = say_hello_lib.goodbye
goodbye.restype = c_char_p
print(goodbye())

secret = say_hello_lib._ZN3foo11tell_secretEv
secret.restype = c_char_p
print(secret())
