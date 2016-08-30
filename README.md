# sshfail
Script to phrase unix sys log and examine and collate failed ssh attempts
NOTE this script needs a sudo level user to access the /var/log dir it will not run as a standard user
Designed to run and work on any modern ubuntu system - will generate reports to a local direcotry under the users enviroument 

How to use
Create a bin directory in your user space if you don't already have one

copy the sshfail.sh file into that directory

chmod +x the sshfail.sh file that will make it executable

also create a directory in your user folder called "sshfail" this will contain the generated repports

test that the script runs
./sshfail.sh
This should generate a 

finaly add the following  lines to your crontab to automate the process

This will run the script every day at 24:45 hours
45 23 * * * /home/your_user_name/bin/./sshfail.sh

you might also like to move the completed reports say to a web site 
50 23 * * * rsync -avzh /home/your_user_name/sshfail/ /var/www/html/yoursitename/nasty/


