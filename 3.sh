echo "Shell script to show various system configuration."
echo "1. Currently logged user and his logname. \n2. Your current shell. \n3. Your home directory. \n4. Your operating system type. \n5. Your current path settings. \n6.Your current working directory. \n7. Show currently logged number of users."
echo "Choose an option from(1 to 7)"
read option
case $option in 
	1) echo "Logged user = $USER"
	   echo "Logname = $LOGNAME"
	   ;;
	2) echo "Your current shell is"
	   echo "$SHELL"
	   ;;
	3) echo "Your home directory"
	   echo "$HOME"
	   ;;
	4) echo "Your operating system type"
	   cat /proc/version
	   ;;
	5) echo "Your current path setting"
	   echo "$PATH"
	   ;;
	6) echo "Your current working directory"
	   echo "$pwd"
	   ;;
	7) echo "Show currently logged number of users"
	   who|wc -l
	   ;;
	*) echo "Choose correct option."
	   ;;
	   esac	
