#!/usr/bin/expect
#
# Requires tcl/expect: https://core.tcl-lang.org/expect/
#

set timeout 20
# Set router IP here:
set ip "192.168.1.1"

# Enable logging uncomment line below
# set output [open "router.log" "a+"]

spawn telnet $ip
expect "username:"
send "admin\r"
expect "password:"
# Default tp-link password
send "admin\r"
expect "TP-Link(conf)#"
send "config\r"
puts "\n\n Rebooting in 5 seconds, ^C to abort...\n\n"
sleep 5
send "dev reboot\r"
send "exit\r"
send "exit\r"
# End
