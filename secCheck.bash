# A simple script for unix to check account security
# Requres root access
echo "Check for users without a password, should return nothing"
awk -F: '( $2 == "" ) { print } ' /etc/shadow 
  
echo "Check for users with a uid of 0, root should be the only response"
awk -F: '( $3 == "0" ) { print } ' /etc/shadow

echo "Check the enabled services"
systemctl list-unit-files --type=service |grep enabled

echo "Open Network Sockets"
ss -tulpn

echo "Further infor on active services"
lsof -i -n
