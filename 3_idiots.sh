#!/bin/bash

#shell for user defined variable
hero="rancho"
villain="virus"
echo "3 idiots ka hero hai $hero"
echo "3 idiotska villain hai $villain"


#shell / environment variables bhi hote hai (predefined)
echo "current logged in user $USER"

# user input
read -p "Rancho ka pura naam ky tha? " fullname
echo "Rancho ka poora naam $fullname tha"


# arguements

# ./3_idiots.sh raju farhan rancho

echo "movie ka naam : $0"
echo "first idiot : $1"
echo "second idiot : $2"
echo "third idiot : $3"

echo "the total number f idiots : $#"
echo "Hence the 3 idiots ar $@"


