# A simple script for unix to check account security

echo "Check for users without a password"
  awk -F: '( $2 == "" ) { print } ' /etc/shadow 
