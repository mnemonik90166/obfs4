
#!/bin/bash
echo ' 							'
echo '############################-obfs4-brdges-###################################'
echo '    						   '

sleep 2





#######################################################



#systemctl stop tor@default.service 
#sleep 2
#echo ' Stopping tor..'
#sleep 2
echo ' tor is offline..obfs4 requested'
sleep 1
echo ' ���������� obfs4 ������ � ���� /home/amnesia/Persistent/obfs/torrc'
sleep 1
cp /etc/tor/torrc /home/amnesia/Persistent/obfs/torrc
echo 'Sandbox 0' >> /home/amnesia/Persistent/obfs/torrc
echo 'DisableNetwork 0' >> /home/amnesia/Persistent/obfs/torrc
echo 'UseBridges 1' >> /home/amnesia/Persistent/obfs/torrc
echo 'ClientTransportPlugin obfs4 exec /usr/bin/obfs4proxy' >> /home/amnesia/Persistent/obfs/torrc
echo 'UpdateBridgesFromAuthority 1' >> /home/amnesia/Persistent/obfs/torrc
echo 'ExcludeExitNodes {ru},{ua},{by},{kz},{kg},{az},{am},{uz},{tj},{??}' >> /home/amnesia/Persistent/obfs/torrc


###

#echo 'Bridge obfs4 79.227.245.148:46749 56BB1678F4A9298C7014B54E0BCC0B7A1614E655 cert=CysYd9MpssWoff98uB5QTzoFmF99gVzB8RXMKHFOZwbB85h8sDL6sCd0N0gxrArYgJO8KQ iat-mode=0' >> /home/amnesia/Persistent/obfs/torrc
#echo 'Bridge obfs4 138.68.230.74:9443 C5DEA631BA76E502C922F305A941806BC4C78235 cert=1gElsOq4L29G8oTzBCvjndxaljtJ2YEM7OPDqZB+J+vvS9MiXiKowf3ebWqIj0qQRZgaRw iat-mode=0' >> /home/amnesia/Persistent/obfs/torrc
#echo 'Bridge obfs4 50.115.165.165:443 9B51EC9B72FB878F7CFF13881A90484A3891B2A5 cert=z2ObO/XQcZCeln4Zy4M2+kmdOyHI/j4euQJgEfSMjzWAsky1LnnzNj5S6DU9k9u43PYmew iat-mode=0' >> /home/amnesia/Persistent/obfs/torrc

echo 'Bridge obfs4 104.244.73.222:443 0DA3849E0B9D36BF8227D37A9F8BBF8DE7520782 cert=/vaUb5BXnXzTDjqClzK1ldVa7Bc6MBq4GK7wHh3WP0K0CnzVUZL/R5dRdZ2I9C1Hek3PBA iat-mode=0' >> /home/amnesia/Persistent/obfs/torrc
echo 'Bridge obfs4 91.4.149.231:46749 56BB1678F4A9298C7014B54E0BCC0B7A1614E655 cert=CysYd9MpssWoff98uB5QTzoFmF99gVzB8RXMKHFOZwbB85h8sDL6sCd0N0gxrArYgJO8KQ iat-mode=0' >> /home/amnesia/Persistent/obfs/torrc
echo 'Bridge obfs4 50.115.165.165:443 9B51EC9B72FB878F7CFF13881A90484A3891B2A5 cert=z2ObO/XQcZCeln4Zy4M2+kmdOyHI/j4euQJgEfSMjzWAsky1LnnzNj5S6DU9k9u43PYmew iat-mode=0' >> /home/amnesia/Persistent/obfs/torrc
###

sleep 1
echo ' Copying.. /home/amnesia/Persistent/obfs/torrc -> /etc/tor/torrc'
sleep 1
rm /etc/tor/torrc -v
sleep 1
cp /home/amnesia/Persistent/obfs/torrc -T /etc/tor/torrc -v
echo ' Completed. Restarting tor...'
sleep 5
systemctl restart tor@default.service
sleep 31
echo ' tor ...now powerin ON'
sleep 20
echo ' Tor now uses obfs4.'
echo '## BRIDGES DATE 07.07.2019 ##'
sleep 5
rm /home/amnesia/Persistent/obfs/torrc
#onioncircuits # ??






