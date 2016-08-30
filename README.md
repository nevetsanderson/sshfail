# sshfail
sshfail is a script to phrase unix sys log information and examine and collate failed ssh attempts
NOTE this script needs a sudo level user to access the /var/log dir it will not run as a standard user out of the box!
The script is designed to run and work on any modern ubuntu system - It will generate reports to a local direcotry under the users enviroument 

How to use
Create a bin directory in your user space if you don't already have one

mkdir  ~/bin

copy the sshfail.sh file into that directory
cp sshfail.sh ~/bin/

chmod +x the sshfail.sh file that will make it executable
cd bin
chmod +x sshfail.sh
also create a directory in your user folder called "sshfail" this will contain the generated repports

mkdir  ~/sshfail

test that the script runs
cd ~/bin
./sshfail.sh
This should generate a file in your newly created sshfail directory

finaly by adding the following  lines to your crontab you automate the process
This will run the script every day at 24:45 hours

45 23 * * * /home/your_user_name/bin/./sshfail.sh

you might also like to move the completed reports say to a web site 
50 23 * * * rsync -avzh /home/your_user_name/sshfail/ /var/www/html/yoursitename/nasty/

Good luck!


