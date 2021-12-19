i="y"
while [ $i = "y" ]
do 
echo "Choose an options: "
echo "1. About your os and version, release number, kernel version. \n2. Show all available shells. \n3. Show mouse settings. \n4. Show computer cpu information like processor type,speed etc. \n5. Show memory information. \n6. Show hard disk information. \n7. File system."
read ch
case $ch in
	1)	echo "About your os and version."
		if [ -f/etc/os/-release ]
		then 
			echo "OS: "
			cat /etc/os-release
		fi
		;;
	2)	echo "Shows all available shells."
		if [ -f/etc/shells ]
		then
			cat /etc/shells
		fi
		;;
	3)	echo "Shows mouse settings."
		xinput -list-props "PixArt USB optical Mouse"
		;;
	4)	echo "Shows computer cpu information"
		if [ -f/proc/cpuinfo ]
		then
			cat /proc/cpuinfo
		fi
		;;
	5)	echo "Shows memory information."
		if [ -f/proc/meminfo ]
		then
			cat /proc/meminfo
		fi
		;;
	6)	echo "Shows hard disk information."
		if [ -f/proc/driver/rtc ]
		then 
			cat /proc/driver/rtc
		fi
		;;
	*)	echo "Choose correct option."
		;;
	esac
	echo "Do you want to continue(y/n): "
	read i
	if [ $i != "y" ]
	then
		break
	fi
	done
