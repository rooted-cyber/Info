command -v figlet > /dev/null 2>&1 || pkg install figlet
command -v toilet > /dev/null 2>&1 || pkg install toilet
command -v termux-open > /dev/null 2>&1 || pkg install termux-api
clear
lal="\033[91m"
	pila="\033[93m"
	hara="\033[92m"
figlet Info | toilet -f term -F gay
echo
printf "	$lal [ 1 ]$hara Name\n"
printf "	$lal [ 2 ]$hara Age\n"
printf "	$lal [ 3 ]$hara Shellphish\n"
printf "	$lal [ 4 ]$hara Ogyoutube\n
printf "	$lal [ 5 ]$hara Update tool\n"
echo
echo -e -n "$pila Select >> "
read hi
if [ $hi -eq 1 ];then
cat name.txt >> /sdcard/name.txt
printf "Saved name.txt in sdcard"
termux-open https://raw.githubusercontent.com/rooted-cyber/Info/master/name.txt
fi
if [ $hi -eq 2 ];then
cat age.txt >> /sdcard/age.txt
printf "Saved age.txt in sdcard"
termux-open https://raw.githubusercontent.com/rooted-cyber/Info/master/age.txt
fi
if [ $hi -eq 3 ];then
cat shellPhish.txt >> /sdcard/shellphish.txt
printf "Saved shellphish.txt in sdcard"
termux-open https://raw.githubusercontent.com/rooted-cyber/Info/master/shellPhish.txt
fi
if [ $hi -eq 4 ];then
cat Ogyoutube.txt >> /sdcard/Ogyoutube.txt
printf "Saved ogyoutube in sdcard"
termux-open https://raw.githubusercontent.com/rooted-cyber/Info/master/Ogyoutube.txt
fi
if [ $hi -eq 5 ];then
cd ~
rm -rf Info
printf "\033[92m [+] Updating...."
git clone https://github.com/rooted-cyber/Info
cd Info
bash Info.sh
fi