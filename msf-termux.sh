#bin/bash
clear
printf ""
printf "    ╔══════════════════════════════════════╗"
printf "    ║             \e[34m\e[5m msf-termux\e[25m\e[97m              ║"
printf "    ╠══════════════════════════════════════╣"
printf "    ║            Version - 1.0             ║"
printf "    ╠══════════════════════════════════════╣"
printf "    ║     Developed by:\e[96m Tutorial-Mania\e[97m     ║"
printf "    ╠══════════════════════════════════════╣"
printf "    ║\e[31m https://facebook.com/tutorialmaniabd\e[97m ║"
printf "    ╠══════════════════════════════════════╣"
printf "    ║     [1] - Install metasploit         ║"
printf "    ║     [2] - Uninstall metasploit       ║"
printf "    ║     [3] - Update msf-termux          ║"
printf "    ║     [0] - Exit                       ║"
printf "    ╚══════════════════════════════════════╝"
printf ""
read -p $"    Enter your option: " op

if [[ $op -eq 0 ]]; then
echo ""
echo -e "    \e[96mBye Bye\e[0m"
sleep 2
clear
exit 1

elif [[ $op -eq 3 ]]; then
echo ""
echo -e "   \e[93m Updating...\e[0m"
apt-get install git -y
cd ..
rm -rf msf-termux
git clone https://github.com/Tutorial-Mania/msf-termux.git
echo ""
printf "    \e[32m Updated\e[0m"
sleep 2
clear
exit 1

elif [[ $op -eq 1 ]]; then
echo ""
echo -e "   \e[93m Installing...\e[0m"
echo "   It can take 10 to 30 min. Depends on your net speed."
sleep 2
echo ""
cd $HOME
apt-get install unstable-repo -y
apt-get install metasploit -y
echo ""
printf "    \e[32m Metasploit installed\e[0m"
printf "    Type msfconsole to start metasploit-framework"
sleep 2
clear
exit 1

elif [[ $op -eq 2 ]]; then
echo ""
read -p $"Do you want to remove metasploit [y/n] ? " que
if [[ $que -eq y ]]; then
echo ""
printf "   \e[93m Unnstalling...\e[0m"
echo ""
cd
apt-get --purge remove metasploit-framework
echo ""
printf "    \e[32m Metasploit uninstalled\e[0m"
sleep 2
clear
exit 1
else
bash msf-termux.sh
fi

else
echo ""
printf "    \e[91m Invalid option\e[0m"
sleep 2
clear
bash msf-termux.sh

fi
