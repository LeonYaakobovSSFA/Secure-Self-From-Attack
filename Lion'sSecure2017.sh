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
RD=$(tput setaf 1 && tput bold)
GR=$(tput setaf 2 && tput bold)
BL=$(tput setaf 6 && tput bold)
DBL=$(tput setaf 4 && tput bold)
STAND=$(tput sgr0)
HIS1=$(history)
NIC=enp3s0f1
NICV=virbr0
NICVIR=virbr0-nic
echo $GR
echo "			#######################    "
echo "			# $RD Love $BL I-S-R-A-E-L $GR #    "
echo "			#######################    "
echo $GR" <--------------------------✡-✡-✡-✡-✡------------------------->"
echo $GR"<--✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡-->"
echo $GR"<--[✡|---✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡---|✡]-->"
echo $GR"<--[✡|---✡              ✡  $BL I-S-R-A-E-L $GR  ✡           ✡---|✡]-->"
echo $GR"<--[✡|---✡             Security Script 2017           ✡---|✡]-->"
echo $GR"<--[✡|---✡           written by  Leon Yaakobov        ✡---|✡]-->"
echo $GR"<--[✡|---✡        SSFA = Secure Self From Attack      ✡---|✡]-->"
echo $GR"<--[✡|---✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡---|✡]-->"
echo $GR"<--✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡-->"
echo $GR" <--------------------------✡-✡-✡-✡-✡------------------------->"
echo $BL"	✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡"
echo $BL"	✡   Version 1.0                        ✡"
echo $BL"	✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡"
echo $BL"	✡   L.Y SSFA Security Script           ✡"
echo $BL"	✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡"
echo $BL"	✡   Visit my site: www.lyssfa.co.il    ✡"
echo $BL"	✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡"
echo ""
echo ""

echo $GR"  ✡--Show some net Route--✡ "
netstat -lnptu
echo $GR""
echo ""

echo $GR"  ✡--Checking iptables and set this rules--✡ "
echo $BL"  ✡--Show current rules--✡ "
echo $GR""
echo ""
	sudo  iptables -L -n -v --line-numbers
echo $BL"  ✡--Delet all current rules--✡ "
echo ""
echo $GR""
	sudo iptables -F
	sudo iptables -X
echo $BL"  ✡--Show current rules--✡ "
echo ""
echo $GR""
	sudo iptables -L -n -v
echo $BL"  ✡--Set News rules--✡ "
echo ""
echo $GR""
	sudo iptables -A INPUT  -p tcp -m multiport --dports 80,443 -j ACCEPT
	sudo iptables -A INPUT  -p tcp -m multiport --dports 161,1143,3389,162,23,631,10050,22,49152,3689,49153 -j DROP
	sudo iptables -A INPUT  -p tcp -m multiport --dports 5353,57194,53,631,9876,5432 -j DROP
	sudo iptables -A FORWARD  -p tcp -m multiport --dports 80,443 -j ACCEPT
	sudo iptables -A FORWARD  -p tcp -m multiport --dports 161,1143,3389,162,23,631,10050,22,49152,3689,49153 -j DROP
	sudo iptables -A FORWARD  -p tcp -m multiport --dports 5353,57194,53,631,9876,5432 -j DROP
	sudo iptables -A OUTPUT  -p tcp -m multiport --dports 80,443 -j ACCEPT
	sudo iptables -A OUTPUT  -p tcp -m multiport --dports 161,1143,3389,162,23,631,10050,22,49152,3689,49153 -j DROP
	sudo iptables -A OUTPUT  -p tcp -m multiport --dports 5353,57194,53,631,9876,5432 -j DROP
echo $BL"  ✡--Show current rules--✡ "
echo ""
echo $GR""
	sudo  iptables -L -n -v --line-numbers

# Check history and remove it.

echo $BL"	<-################->"
echo $BL"	<-# Last History #->"
echo $BL"	<-################->"$RD
	sudo  cat //home/leon/.bash_history

echo $BL"	<-###########################->"
echo $BL"	<-# Remove Terminal History #->"
echo $BL"	<-###########################->"$RD
	sudo  rm //home/leon/.bash_history

#sudo etherape
 echo -n $BL" Finding your Network Interfaces for you... "$GR
 echo ""
	 ifconfig -a | cut -d " " -f12 | egrep -v 'lo|vm'
 echo ""

 #echo ""
echo $BL"	<-################->"
echo $BL"	<-# Route  Table #->"
echo $BL"	<-################->"$GR
	sudo route

echo $BL"	##########"
echo $BL"	# 1 TYID #" #Taking Your Interface Down...
echo $BL"	##########"$DBL

	 ifconfig
	 ifconfig $NIC down
	 ifconfig $NICV down
	 ifconfig $NICVIR down
	 ifconfig

echo $BL"	##########"
echo $BL"	# 2 CYMA #"
echo $BL"	##########" $GR
	route
		echo $DBL

	sudo macchanger -r $NIC
	sudo macchanger -r $NIC
echo $BL"	########"
echo $BL"	# 3 IU #" # Interface Up...
echo $BL"	########"$GR
	  route

		echo $DBL
	 ifconfig
	 ifconfig $NIC up
	 ifconfig $NIC
	echo $GR
	route

echo $BL"	###############"
echo $BL"	# YMINRTYFUMC #"
echo $BL"	###############"$GR
 echo ""
	  route
echo $BL"	####################"
echo $BL"	# 1 Network Status #"
echo $BL"	####################"$DBL
	 sudo  service network-manager status
echo $BL"	##########################"
echo $BL"	# 2 Network Stop & Status#"
echo $BL"	##########################"$DBL
	 service network-manager stop
	 service network-manager status
echo $BL"	############################"
echo $BL"	# 3 Network Start & Status #"
echo $BL"	############################"$DBL
	 service network-manager start
	 service network-manager status

# read -p "Please press ENTER to exit the script"
#Rm history
echo $BL"####################"
echo $BL"# Standart history #"
echo $BL"####################"$RD
	 history
echo $BL"##################"
echo $BL"# sudo history   #"
echo $BL"##################"$RD
	 history -cr

echo "$(tput setaf 111) Cheking Services"


echo $BL"✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡"
echo $BL"✡ Show Running Services ✡"
echo $BL"✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡"
echo $BL
service --status-all | grep "+"
echo "    ############    "
echo "    # 1 $RD tor $BL #    "
echo "    ############    "$GR
service tor status
service tor stop
service tor status

echo $BL
echo "    ################"
echo "    #$DBL 2$RD postgresql$DBL #    "
echo "    ################" $GR
service postgresql status
service postgresql stop
service postgresql status
echo $BL
echo "    ##############    "
echo "    #$DBL 3.1$RD status$DBL #    "
echo "    ##############    " $GR
service metasploit status
echo $BL
echo "    ############    "
echo "    #$DBL 3.2$RD stop$DBL #    "
echo "    ############    " $GR
service metasploit stop
echo $BL
echo "    ##############    "
echo "    #$DBL 3.3$RD status$DBL #    "
echo "    ##############    " $GR
service metasploit status

echo $BL
echo "    ##########    "
echo "    #$DBL 4 cron #    "
echo "    ##########    " $GR
service cron status
service cron stop
service cron status
echo $BL
echo "    ##########    "
echo "    #$DBL 5 thin #    "
echo "    ##########    " $GR
service thin status
service thin stop
service thin status
echo $BL
echo "    #######################    "
echo "    #$DBL 6 speech-dispatcher #    "
echo "    #######################    " $GR
whatis speech-dispatcher $BL
service speech-dispatcher status
service speech-dispatcher stop
service speech-dispatcher status
echo $BL
echo "    ##############    "
echo "    #$DBL 7 ondemand #    "
echo "    ##############    "$GR
service ondemand status
service ondemand stop
service ondemand status
echo $BL
echo "    #########    "
echo "    #$DBL 8 ufw #    "
echo "    #########    " $BL
service ufw status | $GR
systemctl status ufw
service ufw stop
service ufw status | systemctl --all | grep ufw
echo $BL
echo "    ###############    "
echo "    #$DBL 9 bluetooth #    "
echo "    ###############    " $GR
whatis bluetooth
service bluetooth status
service bluetooth stop
service bluetooth status
echo $BL
echo "    ##########    "
echo "    #$DBL 10 ssh #    "
echo "    ##########    " $GR
whatis ssh
service ssh status
service ssh stop
service ssh status
echo $BL
echo "    ############    "
echo "    #$DBL 11 mysql #    "
echo "    ############    " $GR
whatis mysql
service mysql status
service mysql stop
service mysql status


 echo $BL
echo "    #################    "
echo "    #$DBL 12 virtualbox #    "
echo "    #################    " $GR
whatis virtualbox
service virtualbox status
service virtualbox stop
service virtualbox status

 echo $BL
echo "    ##############    "
echo "    #$DBL 13 apache2 #    "
echo "    ##############    " $GR
whatis apache2
service apache2 status
service apache2 stop
service apache2 status

echo $GR"✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡"
echo $BL"✡$DBL Show Running Services ✡"
echo $GR"✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡✡"
echo $BL

service --status-all | grep "+"

echo $GR
echo "    ##############    "
echo "    # $DBL Good Bye $GR #    "
echo "    ##############    "

history -cr
