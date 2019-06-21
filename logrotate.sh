yum install logrotate -y 

cd /etc/logrotate.d/ |  wget https://raw.githubusercontent.com/hariharan-rhce/Logrotate/master/apache

logrotate -f /etc/logrotate.d/apache

echo -e "/var/log/messages {\nmissingok\nmonthly\ncreate 0600 root utmp\nrotate 1\n}" >> /etc/logrotate.conf

logrotate -f /etc/logrotate.conf
