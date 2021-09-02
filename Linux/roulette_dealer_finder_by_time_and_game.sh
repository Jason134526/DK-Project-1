#! /bin/sh

echo " The dealer on $3 at $1 $2 was : "

case $4 in
	2)
		grep "$1 $2" ../Dealer_Analysis/Dealer_Schedules_0310/$3_Dealer_schedule | awk '{print $5, $6}'
		;;
	1)
                grep "$1 $2" ../Dealer_Analysis/Dealer_Schedules_0310/$3_Dealer_schedule | awk '{print $3, $4}'
		;;
	3)
		grep "$1 $2" ../Dealer_Analysis/Dealer_Schedules_0310/$3_Dealer_schedule | awk '{print $7, $8}'
		;;
	*)
		echo "Error: Enter game name as 1 2 or 3: 1 = BlckJck, 2 = Rltte, 3 = Txas_Hldm"
		;;
esac
