#! /bin/sh
echo "The roulette dealer at $2 $3 on $1 was :"

grep "$2 $3" ../Dealer_Analysis/Dealer_Schedules_0310/$1_Dealer_schedule | awk '{print $5, $6}'

