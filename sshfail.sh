cd /var/log/
#used for file names
now=$(date +"%m_%d_%Y_%T")

#used for todays date
sdate=$(date +"%b %e")

echo `date` >> ~/aholes/aholefile_$now

echo "Number of attempts to hack my machine" >> ~/aholes/aholefile_$now
cat auth.log | grep "$sdate"| grep "refused connect from" | grep -oE "\b([0-9]{1,3}\.){3}[0-9]{1,3}\b"  | wc -l >> ~/aholes/aholefile_$now
echo  "Number of unique IP address that junk came from" >> ~/aholes/aholefile_$now
cat auth.log | grep "$sdate"| grep "refused connect from" | grep -oE "\b([0-9]{1,3}\.){3}[0-9]{1,3}\b" | sort -u  | wc -l  >> ~/aholes/aholefile_$now
echo >> ~/aholes/aholefile_$now
echo "These are their ip address" >> ~/aholes/aholefile_$now
echo " " >> ~/aholes/aholefile_$now


cat auth.log | grep "$sdate"| grep "refused connect from" | grep -oE "\b([0-9]{1,3}\.){3}[0-9]{1,3}\b" | sort -u  >> ~/aholes/aholefile_$now


