##################################
# Network bash profile utilities #
##################################

# Displays the current public ip
alias publicip='curl ip.appspot.com'
# Show all open TCP/IP sockets
alias netCons='lsof -i'
# Flush out the DNS Cache
alias flushDNS='dscacheutil -flushcache'
# Display open sockets
alias lsock='sudo /usr/sbin/lsof -i -P'
# Display only open UDP sockets
alias lsockU='sudo /usr/sbin/lsof -nP | grep UDP'
# Display only open TCP sockets
alias lsockT='sudo /usr/sbin/lsof -nP | grep TCP'
# Get info on connections for en0
alias ipInfo0='ipconfig getpacket en0'
# Get info on connections for en1
alias ipInfo1='ipconfig getpacket en1'
# All listening connections
alias openPorts='sudo lsof -i | grep LISTEN'
# All ipfw rules inc/ blocked IPs
alias showBlocked='sudo ipfw list'
