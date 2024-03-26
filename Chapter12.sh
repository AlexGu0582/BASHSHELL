#Working with the if-then Statement
if command
then 

fi


#if-then-else statement

if command 
then 
    command
else 

fi 


#!/bin/bash
#Testing the else section
#
testuser=NoSuchUser
#
if grep $testuser /etc/passwd
then 
    echo "The bash files for user $testuser are:"
    ls -a /home/$testuser/.b*
    echo 
else 
    echo "The user $testuser does not exist on the system."
fi 




#nest the if-then statements
#!/bin/bash
#Testing nested ifs
#
testuser=NoSuchUser
#
if grep $testuser /etc/passwd
then 
    echo "The user $testuser exists on this system."
else 
    echo "The user $testuser does not exist on this system."
    if ls -d /home/$testuser/
    then 
        echo "However, $testuser has a directory."
    fi 
fi 


if command1
then 

elif command2
then 
    more commands
fi 


#!/bin/bash
#Testing nested ifs-use elif
#
testuser=NoSuchUser
#
if grep $testuser /etc/passwd
then 
    echo "The user $testuser exists on this system."
elif ls -d /home/$testuser
else
    echo "The user $testuser does not exist on this system."
    echo "However, $testuser has a directory."
fi 



#"if test condition; then" same as "if [ condition ]; then"

if [ condition ]
then 
    commands
fi 