# put your shell (bash) code here
gcd ()
{
if [[ $1 -eq $2 ]]; then
	echo "GCD is $1"
elif  [[ $1 -gt $2 ]]; then
	let "n = $1-$2"
	gcd $n $2
elif [[ $2 -gt $1 ]]; then
	let "n=$2-$1"
	gcd $1 $n  
fi		

}

while [[ read != '' ]]; do
	read -p "Enter two chisla: " a b
	if [[ -z "$a" ]] || [[ -z "$b" ]]; then
		echo "bye"
		exit
	else
		gcd $a $b
	fi
done




