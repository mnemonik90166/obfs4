
#!/bin/bash
echo ' '
echo '                           ################    '
echo '############################-obfs4-brdges-###################################'
echo '       #####################    '
echo ' '
sleep 2
#echo ' ##########   ########    SSS'
#echo '## #      ##    ##  SS  S'
#echo '## #      ##    ## SS'
#echo '## ####   ##    ######   SS'
#echo '## #   #  ##     #   SS  '
#echo '## ####   ##     # S  SS'
#echo ' ##########     #  SSS'
#echo '         '
#echo ''
#echo '####################################'
#echo ' ############# '
#echo ''
#echo ''
#echo ''
#echo ''
#echo ''
#echo ''
#echo ''




#######################################################



#systemctl stop tor@default.service # Выключаем тор
#sleep 2
#echo ' Stopping tor..'
#sleep 2
echo ' tor is offline..obfs4 requested'
sleep 1
echo ' Добавление obfs4 мостов в файл /home/amnesia/Persistent/obfs/torrc'
sleep 1
cp /etc/tor/torrc /home/amnesia/Persistent/obfs/torrc
echo 'Sandbox 0' >> /home/amnesia/Persistent/obfs/torrc
echo 'DisableNetwork 0' >> /home/amnesia/Persistent/obfs/torrc
echo 'UseBridges 1' >> /home/amnesia/Persistent/obfs/torrc
echo 'ClientTransportPlugin obfs4 exec /usr/bin/obfs4proxy' >> /home/amnesia/Persistent/obfs/torrc
echo 'UpdateBridgesFromAuthority 1' >> /home/amnesia/Persistent/obfs/torrc
#echo 'ExcludeExitNodes {ru},{ua},{by},{kz},{kg},{az},{am},{uz},{tj},{??}' >> /home/amnesia/Persistent/obfs/torrc
echo 'Bridge obfs4 198.46.248.36:59021 6E6732E00C3F8912BDCA80CFCF23D0D2686AC38B cert=HZwfkIUeLO4gTRevIUIIEa3DhwsB3pndFpLMsSXYxzyfp0gHB2w+tBNu5vGFIQPNswnnEg iat-mode=0' >> /home/amnesia/Persistent/obfs/torrc
echo 'Bridge obfs4 104.236.211.7:9443 3FFEA2F2632A60AB3ADEF12334995EB9AEA1A0F1 cert=C+SOQMBNDqQ/NY14c/rsMrYR9MQ7+72j663dVvyEc38ZaZMshHubqqT0AglHM47fN6yveA iat-mode=0' >> /home/amnesia/Persistent/obfs/torrc
echo 'Bridge obfs4 138.68.227.86:9443 B90258997D09908F9880407871DCB0BF877440C8 cert=5IBqBKS05ybP5/s0wSS1/PyfYvLW4Ie6Onf/uK/ArWwHFp1NPMxy6DNAKH7Ksp7Y04+pUg iat-mode=0' >> /home/amnesia/Persistent/obfs/torrc



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
echo ' tor off...'
sleep 20
echo ' Tor now uses obfs4.'
sleep 5
rm /home/amnesia/Persistent/obfs/torrc
#onioncircuits # зачем это надо?






