#! /usr/bin/python

import subprocess as sp

try:
    output = sp.check_output(
            ['ls', 'fake.txt'],
            stderr=sp.STDOUT
            )
except OSError as err:
    print("Caught OSError")
    output = err
except sp.CalledProcessError as err:
    print("Caught CalledProcessError")
    output = err

print(output)

