#!/bin/bash
site[0]="stackoverflow"
site[1]="askubuntu"
site[2]="prarabdhasoni"
site[3]="superuser"
site[4]="twitter"
for i in "${site[@]}"
do
	echo "http://network-tools.com/default.asp?prog=trace&host=www.$i.com"  |
	wget -O- -i- | 
   hxnormalize -x |  hxselect -i "table.AutoNumber2" |  lynx -stdin -dump > ${i} 
done