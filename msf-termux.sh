#bin/bash
clear
printf ""
echo "    ╔══════════════════════════════════════╗"
echo -e "    ║             \e[34m\e[5m msf-termux\e[25m\e[97m              ║"
echo "    ╠══════════════════════════════════════╣"
echo "    ║            Version - 1.0             ║"
echo "    ╠══════════════════════════════════════╣"
echo -e "    ║     Developed by:\e[96m Tutorial-Mania\e[97m     ║"
echo "    ╠══════════════════════════════════════╣"
echo -e "    ║\e[31m https://facebook.com/tutorialmaniabd\e[97m ║"
echo "    ╠══════════════════════════════════════╣"
echo "    ║     [1] - Install metasploit         ║"
echo "    ║     [2] - Uninstall metasploit       ║"
echo "    ║     [3] - Update msf-termux          ║"
echo "    ║     [0] - Exit                       ║"
echo "    ╚══════════════════════════════════════╝"
printf "\e[0m"
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
echo -e "    \e[32m Updated\e[0m"
sleep 2
cd $HOME
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
echo -e "    \e[32m Metasploit installed\e[0m"
echo "    Type msfconsole to start metasploit-framework"
sleep 2
clear
exit 1

elif [[ $op -eq 2 ]]; then
echo ""
read -p $"Do you want to remove metasploit [y/n] ? " que
if [[ $que -eq y ]]; then
echo ""
echo -e "   \e[93m Unnstalling...\e[0m"
echo ""
cd
apt-get --purge remove metasploit-framework
echo ""
echo -e "    \e[32m Metasploit uninstalled\e[0m"
sleep 2
clear
exit 1
else
bash msf-termux.sh
fi

else
echo ""
echo -e "    \e[91m Invalid option\e[0m"
sleep 2
clear
bash msf-termux.sh

fi
