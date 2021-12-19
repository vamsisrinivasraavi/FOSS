i="y"
while [ $i = "y" ]
do
echo "Enter two values"
read a b
echo "Choose an options: "
echo "1. Addition \n2. Subtration \n3. Multiplication \n4. Division"
read n
case $n in
	1)	sum=`expr $a + $b`
		echo "Sum of $a and $b is $sum"
		;;
	2)	sub=`expr $a - $b`
		echo "Difference of $a and $b is $sub"
		;;
	3)	mul=`expr $a \* $b`
		echo "Product of $a and $b is $mul"
		;;
	4)	div=`expr $a / $b`
		echo "Divison of $a and $b is $div"
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
