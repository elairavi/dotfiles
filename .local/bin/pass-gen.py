#!/usr/bin/env python

#Select a random set of characters
import string
import secrets

#Parse options and user input
import argparse
parser = argparse.ArgumentParser()
parser.add_argument("--length", "-l", type=int, default=116, help="length of the password to generate")
parser.add_argument("--mode", "-m",  type=int, default=0, help="changes password generation output. 0 is the default, 1 outputs a secure token string in hexadecimal format, and 2 outputs a UUID4 secure unique string ID ")
parser.add_argument("--number", "-n", type=int, default=1, help="amount of passwords to generate")
parser.add_argument("--verbose", "-v", action="store_true", help ="Be verbose; show details about what was generated.")
args = parser.parse_args()
length = args.length
number = args.number
mode = args.mode 
verbosity = args.verbose
#Do the thing. Password Generator go brrrrr. 
if mode == 0:  
    def random_secure_string(stringLength):
        secureStr = ''.join((secrets.choice(string.ascii_letters + string.digits + string.punctuation) for i in range(stringLength)))
        return secureStr
    for p in range(number):
        print(random_secure_string(length))
    if verbosity == True:
        print("Generated", number, "Random Secure String password(s) using", length, "character length") 
if mode == 1:
    for p in range(number):
        print (secrets.token_hex(length))
    if verbosity == True:
        print("Generated", number, "Secure Hexidecimal String Token password(s)", "using a", length, "word long text string") 
if mode == 2: 
    for p in range(number):
        import uuid
        stringId = uuid.uuid4()
        print(stringId)
    if verbosity == True:
        print("Generated", number, "Universally Unique Secure string (UUID4) password(s). Not affected by length input") 
