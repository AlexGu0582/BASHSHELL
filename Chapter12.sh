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


#The test Numeric Comparisons
#n1 -eq n2  Checks if n1 is equal to n2
#n1 -ge n2  Checks if n1 is greater than or equal to n2
#n1 -gt n2  Checks if n1 is greater than n2
#n1 -le n2  Checks if n1 is less than or equal to n2
#n1 -lt n2  Checks if n1 is less than n2
#n1 -ne n2  Checks if n1 is not equal to n2


#The test String Comparisons
#str1 = str2    Checks if str1 is the same as string str2
#str1 != str2   Checks if str1 is not the same as str2
#str1 < str2    Checks if str1 is less than str2
#str1 >str2     Checks if str1 is greater than str2
#-n str1        Checks if str1 has a length greater than zero
#-z str1        Checks if str1 has a length of zero


#The test File Comparisons
#-d file        Checks if file exists and is a directory.
#-e file        Checks if file exists.
#-f file        Checks if file exists and is a file.
#-r file        Checks if file exists and is readable.
#-s file        Checks if file exists and is not empty.
#-w file        Checks if file exists and is writable.
#-x file        Checks if file exists and is executable.
#-O file        Checks if file exists and is owned by the current user.
#-G file        Checks if file exists and the default group is the same as the current user.
#file1 -nt file2 Checks if file1 is newer than file2.
#file1 -ot file Checks if file is older than file2.



#!/bin/bash
#Look before you leap
#
jump_directory=/home/arthur
#
if [ -d $jump_directory ]
then
    echo "The $jump_directory directory exists."
    cd $jump_directory
    ls 
else 
    echo "The $jump_directory directory does not exist."
fi 


#!/bin/bash
#Testing if a file is empty.
#
file_name=$HOME/sentinel
#
if [ -f $file_name ]
then 
    if [ -s $file_name ]
    then 
        echo "the $file_name file exists and has data in it."
        echo "Will not remove this file."
    else 
        echo "The $file_name file exists, but is empty."
        echo "Deleting empty file ..."
        rm $file_name
    fi 
else 
    echo "File, $file_name, does not exist."
fi 



# [[ expression ]]  double breakets
#The double breakets provides an additional feature -- a regular expression. 
#test24.sh
#!/bin/bash
#using pattern matching
#
if [[ $USER == r* ]]
then 
    echo "Hello $USER"
elso
    echo "Sorry, I don't know you."
fi 


#case variable in
#pattern1 | pattern2) command1;;
pattern3) commands2;;
*) default  command3;;
esac


#test26.sh
#!/bin/bash
#using the case command
#
case $USER in 
rich | barbara)     echo -e "Welcom, $USER; \n Please enjoy your visit.";;
testing)            echo "Special testing account";;
jessica)            echo "Do not forget to log off when you're done.";;
*) echo "Sorry, you are not allowed here."
esac





