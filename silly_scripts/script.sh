# how to run this script, just paste the command below inside double quotes
# "yes | bash script.sh && echo $?"
tries=0
while true
do
		if [ $tries == 3300 ]
		then
				exit 123
		else
			((++tries))
		fi
read -p "install this app? (y/n)" ans
if [ $ans == "y" ]
then
		printf "installing ${tries}\n"
else
		printf "not installing"
		echo
fi
done
