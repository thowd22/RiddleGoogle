#!/bin/bash

#Simple script that asks a riddle

#Vars
riddle="U2FsdGVkX1+DaStH0rhqkkh+R+got3ciJxirZz6t9IFgxgSan92o8HerxAvyGpVmfUvhZmtOCZKEQcqXorebiUrow0cZQ/udaH5LgIRr62+TlMVE64Hm12dLAy/HRDl9JbDXE2lDGOxlJNKEMmVvd3woQESUYpJz1SZT5rFz84dycT1dYeM/ffhfgQAgJOZa"
answer="U2FsdGVkX1/1qu9mwhlnEVqR9uYG9WY38ZqX1sdYoQoQ8L6GtDiIEIjzoZlOwfY1Db0jSBpqE8269rGs+VhRDIIJ1jtRc7MGDvgJl49DRbmTfo5xg1Bi28ACQ9yMgdUc5m7G6ZCvV+ggAlWk4vixCEmmeCJGPbt2jrfLfA6IguFQeMkM3djpmV22Na6yDery"

#Decrypt the riddle
echo $riddle | openssl enc -aes-256-cbc -pbkdf2 -a -d -pass pass:ThisIsntThePassword

#Hint
echo " "
echo "HINT: Its one word and all lowercase"
echo " "

#Ask for answer
echo $answer | openssl enc -aes-256-cbc -pbkdf2 -a -d #-pass pass:


