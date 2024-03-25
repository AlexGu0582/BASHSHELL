#!/bin/bash

echo "The time and date are:"; date 

echo -n "The time and date are:"; date


#check the environment variable
echo $PATH

#display a complete list of active environment variables available by using the "set" command
set 


#!/bin/bash
#display user information from the system

echo "User info for userid: $USER"
echo UID: $UID 
echo HOME: $HOME 


#whenever the script see a dollar sign within quotes, it assumes you're referencing a variable.
echo "The cost of the item is $15"

#To display an actual dollar sign, you must precede it with a backslash character.
echo "The cost of the item is \$15."



#!/bin/bash
#assigning a variable value to another variable
value1=10
value2=$value1 
echo "The resulting value is $value2."


#!/bin/bash
var1=100
var2=50
var3=45
var4=$[$var1 * ($var2 - $var3)]
echo "The final result is $var4."


#using bc in scripts
#!/bin/bash
#Basic format: variable=$(echo "options; expression" | bc)
var1=$(echo "scale=4; 3.44 / 5" | bc)
echo "The answer is $var1"


#test 12
#!/bin/bash

var1=10.46
var2=43.67
var3=33.2
var4=71

var5=$(bc << EOF
scale = 4
a1 = ( $var1 * $var2 )
b1 = ( $var3 * $var4 )
a1 + b1
EOF
)

echo The final answer for this mess is $var5.


#checking the exit staus: $?




