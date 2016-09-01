#!/bin/bash

# A small password generator. Based on the code posted here:
#   https://8ch.net/cyber/res/24167.html#q224233
#   https://archive.is/shAgG (find No.224233)

# Usage:
#   - Enter some secret. This should be a good password and you need to remember it.
#   - Enter a "combinator", e.g. the name of the site, service, or program you want to generate a password for.
#   - This script combines your secret with the combinator and generates passwords using 5 variants of the Secure Hash Algorithm.

# Protips:
#   - Start the script once, enter your secret, and keep it running in order to avoid people being able to shoulderpeek your password.
#       (You could also hard-code your secret into this script (like the original poster), although I recommend to never save any passwords anywhere in plain text.)
#   - You can exit the script by entering an empty string for the combinator.

read -sp "Secret: " secret
echo
echo "Secret saved."

while :
do
read -p "Combinator: " combinator

if [[ -z "${combinator// }" ]]; then break; fi

echo -ne "sha512\t"
echo -n "$secret$combinator" | openssl sha512
echo -ne "sha384\t"
echo -n "$secret$combinator" | openssl sha384
echo -ne "sha256\t"
echo -n "$secret$combinator" | openssl sha256
echo -ne "sha224\t"
echo -n "$secret$combinator" | openssl sha224
echo -ne "sha1\t"
echo -n "$secret$combinator" | openssl sha1
done
