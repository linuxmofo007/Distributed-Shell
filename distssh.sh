#!/bin/bash
  # Usage ./distssh.sh ALL '<command>'
   case $1 in
       ALL) SSH_HOSTS="
	   host1
           host2
           host3
           db_host1
           db_host2
           db_host3";;
       DB) SSH_HOSTS="
           db_host1
           db_host2
           db_host3";;
      esac
  
      for host in ${SSH_HOSTS}
      do
          echo "Connecting to ${host}..." && ssh -t -i ~/.ssh/id_rsa ${host} $2 done 2>/dev/null

