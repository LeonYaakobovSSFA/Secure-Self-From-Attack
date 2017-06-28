#!/bin/bash
#+[✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡]+
#+[# L.Y SSFA Security Script #]+
#+[✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡]+
#+[✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡]+
#+[✡   Version 1.0      ✡]+
#+[✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡]+
#+[✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡]+
#+[✡  Visit my site: www.lyssfa.co.il ✡]+
#+[✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡]+
#+Building a safer world - כדי לבנות עולם בטוח יותר
#+Anyone can contribute and add excerpts, and suggest improvements - כל אחד יכול לתרום ולהוסיף קטעים, ולהציע שיפורים
#+The code is open and free and written with love for the people of Israel! - הקוד הוא פתוח וחינם ונכתב באהבה לעם ישראל!
#+I wish everyone success! - מאחל בהצלחה לכולם !
#+I am a Jew and I know and believe that there is a creator to the world,- אני יהודי ואני יודע ומאמין שיש בורא לעולם, 
#+who follows us every second and second, and we are never alone. -  אשר עוקב אחרינו ובכל שנייה ושנייה, ורנחנו אף פעם לא לבד.
#+Faith will win! - האמונה עוד תנצח!

#DEFINED COLOR SETTINGS
RED=$(tput setaf 1 && tput bold)
GREEN=$(tput setaf 2 && tput bold)
STAND=$(tput sgr0)
BLUE=$(tput setaf 6 && tput bold)
HIS1=$(history)
NIC=(here your name net)
NICV=(here your name net)

echo $GREEN" <--------------------------✡-✡-✡-✡-✡------------------------->"
echo $GREEN"<--✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡-->"
echo $GREEN"<--[✡|---✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡---|✡]-->"
echo $GREEN"<--[✡|---✡ ✡Security Script 2017✡     ✡I-S-R-A-E-L✡  ✡---|✡]-->"	
echo $GREEN"<--[✡|---✡ ✡written by {Leon Yaakobov [SSFA]} in 2017 ✡---|✡]-->"
echo $GREEN"<--[✡|---✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡---|✡]-->"
echo $GREEN"<--✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡-->"
echo $GREEN" <--------------------------✡-✡-✡-✡-✡------------------------->"
echo $BLUE"		+✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡+"
echo $BLUE"		+✡   Version 1.0                        ✡+"           
echo $BLUE"		+✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡+"
echo $BLUE"		+✡   L.Y SSFA Security Script           ✡+" 
echo $BLUE"		+✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡+"
echo $BLUE"		+✡   Visit my site: www.lyssfa.co.il    ✡+"
echo $BLUE"		+✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡+"
echo ""
echo ""

echo $GREEN"  <--Checking iptables and set this rules--> "
	sudo -s iptables -L -n -v --line-numbers
	sudo iptables -F
	sudo iptables -X
	sudo iptables -L -n -v
	sudo iptables -A INPUT  -p tcp -m multiport --dports 80,443 -j ACCEPT
	sudo iptables -A INPUT  -p tcp -m multiport --dports 161,1143,3389,162,23,631,10050,22 -j DROP
	sudo iptables -A FORWARD  -p tcp -m multiport --dports 80,443 -j ACCEPT
	sudo iptables -A FORWARD  -p tcp -m multiport --dports 161,1143,3389,162,23,631,10050,22 -j DROP
	sudo iptables -A OUTPUT  -p tcp -m multiport --dports 80,443 -j ACCEPT
	sudo iptables -A OUTPUT  -p tcp -m multiport --dports 161,1143,3389,162,23,631,10050,22 -j DROP
	sudo -s iptables -L -n -v --line-numbers

# Check history and remove it.

echo "          <-################->"
echo "          <-# Last History #->"
echo "          <-################->"
	sudo -s cat //home/----/.bash_history



#sudo etherape   
 echo -n " Finding your Network Interfaces for you... "$RED
 echo ""
	 ifconfig -a | cut -d " " -f12 | egrep -v 'lo|vm'
 echo ""
 #echo ""
echo $BLUE"	##########"
echo $BLUE"	# 1 TYID #" #Taking Your Interface Down...
echo $BLUE"	##########"$GREEN
	sudo -s route
	echo $RED
	 ifconfig 
	 ifconfig $NIC down
	 ifconfig $NICV down
	 ifconfig 
echo $BLUE"	##########"
echo $BLUE"	# 2 CYMA #"  
echo $BLUE"	##########" $GREEN
	route
		echo $RED

	sudo macchanger -r $NIC
	sudo macchanger -r $NIC
echo $BLUE"	##########"
echo $BLUE"	# 3 IU #" # Interface Up...
echo $BLUE"	##########"$GREEN
	  -s route  
		echo $RED
	 ifconfig 
	 ifconfig $NIC up
	 ifconfig $NIC
	 $BLUE | route 

echo $BLUE"	###############"
echo $BLUE"	# YMINRTYFUMC #"
echo $BLUE"	###############"$RED
 echo ""
	  route 
echo $BLUE"	##################"
echo $BLUE"	# 1 Network Stop #"
echo $BLUE"	##################"$RED
	 sudo -s service network-manager status 
	 service network-manager stop
echo $BLUE"	###################"
echo $BLUE"	# 2 Network Start #"
echo $BLUE"	###################"$RED
	 service network-manager status
	 service network-manager start
echo $BLUE"	####################"
echo $BLUE"	# 3 Network Status #"
echo $BLUE"	####################"$RED
 service network-manager status

# read -p "Please press ENTER to exit the script"
#Rm history 
echo $BLUE"####################"
echo $BLUE"# Standart history #"
echo $BLUE"####################"$RED
	history
echo $BLUE"##################"
echo $BLUE"# sudo history   #"
echo $BLUE"##################"$RED
	history -cr
echo $BLUE"##################"
echo $BLUE"# bash_history   #"
echo $BLUE"##################"	$RED
	#sudo rm //home/----/.bash_history

echo "    #####    "
echo "    # 1 #    "
echo "    #####    "  
 
echo "$(tput setaf 111) Cheking Services"
 
 service --status-all | grep "+"
 whatis tor 
 service tor stop 
 service --status-all | grep "tor"
 echo $BLUE
echo "    #####    "
echo "    # 2 #    "
echo "    #####    " $RED
 whatis postgresql
 service postgresql stop
 service --status-all | grep "postgresql"
 echo $BLUE
echo "    #####    "
echo "    # 3 #    "
echo "    #####    " $RED
 whatis metasploit
 service metasploit stop
 service --status-all | grep "metasploit"
 echo $BLUE
echo "    #####    "
echo "    # 4 #    "
echo "    #####    " $RED
 whatis cron
 service cron stop
 service --status-all | grep "cron"
 echo $BLUE
echo "    #####    "
echo "    # 5 #    "
echo "    #####    " $RED
 whatis thin
 service thin stop
 service --status-all | grep "thin"
  echo $BLUE
echo "    #####    "
echo "    # 6 #    "
echo "    #####    " $RED
 whatis speech-dispatcher
 service speech-dispatcher stop
 service --status-all | grep "speech-dispatcher"
  echo $BLUE
echo "    #####    "
echo "    # 7 #    "
echo "    #####    "$RED
 whatis ondemand
 service ondemand stop
 service --status-all | grep "ondemand"
  echo $BLUE
echo "    #####    "
echo "    # 8 #    "
echo "    #####    " $RED
whatis ufw
 service ufw stop
 service --status-all | grep "ufw"
 echo $BLUE

echo "    #####    "
echo "    # 9 #    "
echo "    #####    " $RED
whatis bluetooth
 service bluetooth stop
 service --status-all | grep "bluetooth"
 echo $BLUE

echo "    ######    "
echo "    # 10 #    "
echo "    ######    " $RED
whatis ssh
 service ssh stop
 service --status-all | grep "ssh"
 echo $BLUE

echo "    ######    "
echo "    # 11 #    "
echo "    ######    " $RED
whatis mysql
 service mysql stop
 service --status-all | grep "mysql"
 echo $BLUE
