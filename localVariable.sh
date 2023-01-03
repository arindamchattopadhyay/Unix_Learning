#!/bin/bash
#local: can only be used in a function
print (){
if [ $1 -ge 2014 ]
then
local name="Modi"
echo "$name"
else
local name="Nehru"
echo "$name"
fi
}
name="Arindam"
echo name: $name
print 2000
echo name: $name