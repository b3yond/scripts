#!/usr/bin/env python3
import os # unix commands?

# ask credentials
username = input("What's your git username? ")
useremail = input("What's your git user's email? ")

#configure git
os.system("git config --global user.name \"" + username + "\"")
os.system("git config --global user.email \"" + useremail + "\"")

# make executable
os.system("pass -c " + username)
os.system("sudo cp ./gits /usr/bin/gits")
os.system("sudo cp ./gits.py /usr/bin/gits.py")
os.system("sudo chmod 775 /usr/bin/gits*")
