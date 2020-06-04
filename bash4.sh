# put your shell (bash) code here

while [[ True ]];do

	read a b c

	if [[ $a == "exit" ]];then 
		echo "bye"
		exit
	elif [[  $b == "+" ]] || [[ $b == "-" ]] || [[ $b == "*" ]] || [[ $b == "/" ]] || [[ $b == "%" ]];then
		case $b in 
		+)let "d=$a+$c"
		echo "$d"
		;;
		-)let "d=$a-$c"
        	echo "$d"
        	;;
		/)let "d=$a/$c"
        	echo "$d"
        	;;
		%)let "d=$a%$c"
        	echo "$d"
        	;;
		*)let "d=$a*$c"
        	echo "$d"
        	;;
		esac
	elif [[ $b == "**" ]];then
		let "d=$a**$c"
		echo "$d"
	else
		echo "error"
		exit
	fi
done



