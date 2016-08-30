#Change to log directory
cd /var/log/
#used for file names
now=$(date +"%m_%d_%Y_%T")

#used for todays date
sdate=$(date +"%b %d")

echo `date` >> ~/sshfail/report_$now

echo "Number of attempts to hack my machine" >> ~/sshfail/report_$now
cat auth.log | grep "$sdate"| grep "refused connect from" | cut -d " " -f 9 | wc -l >> ~/sshfail/report_$now

echo  "Number of unique IP address that junk came from" >> ~/sshfail/report_$now
cat auth.log | grep "$sdate"| grep "refused connect from" | cut -d " " -f 9 | sort -u | wc -l >> ~/sshfail/report_$now
echo
echo "These are their ip address" >> ~/sshfail/report_$now
echo " "
cat auth.log | grep "$sdate" | grep "refused connect from" | cut -d " " -f 9 | sort -u >> ~/sshfail/report_$now
