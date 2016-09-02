cd /var/log/
#used for file names
now=$(date +"%m_%d_%Y_%T")

#used for todays date
sdate=$(date +"%b %e")

echo `date` >> ~/sshfail/report_$now

echo "Number of attempts to hack my machine" >> /sshfail/report_$now
cat auth.log | grep "$sdate"| grep "refused connect from" | grep -oE "\b([0-9]{1,3}\.){3}[0-9]{1,3}\b"  | wc -l >> ~/sshfail/report_$now
echo  "Number of unique IP address that junk came from" >> ~/sshfail/report_$now
cat auth.log | grep "$sdate"| grep "refused connect from" | grep -oE "\b([0-9]{1,3}\.){3}[0-9]{1,3}\b" | sort -u  | wc -l  >> ~/sshfail/report_$now
echo >> ~/sshfail/report_$now
echo "These are their ip address" >> ~/sshfail/report_$now
echo " " >> ~/sshfail/report_$now


cat auth.log | grep "$sdate"| grep "refused connect from" | grep -oE "\b([0-9]{1,3}\.){3}[0-9]{1,3}\b" | sort -u  >> ~/sshfail/report_$now
