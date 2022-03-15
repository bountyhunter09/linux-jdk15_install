#!/usr/bin/env bash

bold=$(tput bold)
normal=$(tput sgr0)
red="\e[91m"
green="\e[92m"
blue="\e[94m"
none="\e[93m"
try="\e[37m"

echo -e "${try}${bold}Make sure you're root before run this script ${try} ${green}"



read -p "If you Download Jdk 15.0.2 ??? please type yes or no and press enter : " filedown

  if [ "$filedown" = "no" ] ;

then 

clear
echo -e "${red}${bold}Make sure you're root before run this script ${bold} ${red}"
sleep 2
sudo rm -rf /usr/lib/jvm/jdk-15.0.2
sleep 1
sudo tar -xvzf jdk-15.0.2_linux-x64_bin.tar.gz && mv jdk-15.0.2 /usr/lib/jvm
sleep 1
echo "PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/usr/lib/jvm/jdk-15.0.2/bin"
JAVA_HOME="/usr/lib/jvm/jdk-15.0.2"" >> /etc/environment
sleep 1
echo -e "${green}Please Select java jdk 15.0.2 mode number and press enter${green}"
sleep 1
echo -e "${try}In bellow${try}"
sudo update-alternatives --install "/usr/bin/java" "java" "/usr/lib/jvm/jdk-15.0.2/bin/java" 0 &> /dev/null
sudo update-alternatives --config java
sudo update-alternatives --install "/usr/bin/javac" "javac" "/usr/lib/jvm/jdk-15.0.2/bin/javac" 0 &> /dev/null
sudo update-alternatives --set java /usr/lib/jvm/jdk-15.0.2/bin/java &> /dev/null
sudo update-alternatives --set javac /usr/lib/jvm/jdk-15.0.2/bin/javac &> /dev/null
sleep 1
echo -e "${blue}Your Java version is ${blue} -->" 
sleep 2
java -version
sleep 1

sleep 1
echo -e "${none}Java path in --> ${none}"
echo $JAVA_HOME
echo -e "${try}Now Try to run Burpsuite Loader${try}"
echo -e "${red}                                               Coded By ${bold}R3D_D3ViL(Cyber-71)${red}"

else
 clear
echo -e "${red}${bold}Make sure you're root before run this script ${bold} ${red}"
sleep 2
echo -e "${green}${bold}Please Wait.......... Java Jdk 15.0.2 downloding --------- ${bold} $green}"

wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1EBRJBve9CnyIf8QEPMfVnq88nJMsolHz' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1EBRJBve9CnyIf8QEPMfVnq88nJMsolHz" -O jdk-15.0.2_linux-x64_bin.tar.gz && rm -rf /tmp/cookies.txt

clear

sleep 2
sudo rm -rf /usr/lib/jvm/jdk-15.0.2
sleep 1
sudo tar -xvzf jdk-15.0.2_linux-x64_bin.tar.gz && mv jdk-15.0.2 /usr/lib/jvm
sleep 1
echo "PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/usr/lib/jvm/jdk-15.0.2/bin"
JAVA_HOME="/usr/lib/jvm/jdk-15.0.2"" >> /etc/environment
sleep 1
echo -e "${green}Please Select java jdk 15.0.2 mode number and press enter${green}"
sleep 1
echo -e "${try}In bellow${try}"
sudo update-alternatives --install "/usr/bin/java" "java" "/usr/lib/jvm/jdk-15.0.2/bin/java" 0 &> /dev/null
sudo update-alternatives --config java
sudo update-alternatives --install "/usr/bin/javac" "javac" "/usr/lib/jvm/jdk-15.0.2/bin/javac" 0 &> /dev/null
sudo update-alternatives --set java /usr/lib/jvm/jdk-15.0.2/bin/java &> /dev/null
sudo update-alternatives --set javac /usr/lib/jvm/jdk-15.0.2/bin/javac &> /dev/null
sleep 1
echo -e "${blue}Your Java version is ${blue} -->" 
sleep 2
java -version
sleep 2
echo -e "${none}Java path in --> ${none}"
echo $JAVA_HOME
echo -e "${try}Now Try to run Burpsuite Loader${try}"
echo -e "${red}                                               Coded By ${bold}R3D_D3ViL(Cyber-71)${red}"

fi
