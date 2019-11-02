#!bin/bin/bash
# Normally, this is always the first line of the script and is known as the shebang. The shebang starts with a comment but the system still uses this line. A comment in a shell script has the # symbol. The shebang instructs the system to the interpreter to execute the script.

echo "Hello World"
# you can suppress the new line after echo with -n

echo "user name: $USER; script name: $0"
#$USER returns the user name in the system.
#The $0 variable represents the script name and this is often used in usage statements.


exit 0
# The exit command is a built in shell and is used to leave or exit the script. The exit code is supplied as an integer argument. A value of anything other than 0 will indicate some type of error in the script's execution.


# Debugging:
# If we want to look at the verbose output from our script and the detailed information about the way the script is evaluated line by line, we can use the -v option (bash -v).
# More commonly used is the -x option, which displays the commands as they get executed. Its useful to know the decision branch that has been chosen by the script.