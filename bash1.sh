
if [[ $# -ne 1 ]]
then
	echo "You should give me 1 parametp bitch"
else
	case $1 in
		0)
		echo "No students"
		;;
		1)
		echo "1 student"
		;;
		2)
		echo "2 students"
		;;
		3)
		echo "3 students"
		;;
		4)
		echo "4 students"
		;;
		*)
		echo "A lot of students"
	esac
fi
