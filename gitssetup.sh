#!/usr/bin/env python
import os # unix commands?

# ask credentials
username = input("What's your git username?")
useremail = input("What's your git user's email?")

#configure git
os.system("git config --global user.name \"" + username + "\"")
os.system("git config --global user.email \"" + useremail + "\"")

# make executable
os.system("cp ./gits /usr/bin/gits")
os.system("cp ./gits.py /usr/bin/gits.py")
os.system("chmod 775 /usr/bin/gits*")
