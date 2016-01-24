
#!/bin/bash
site[0]="stackoverflow"
site[1]="askubuntu"
site[2]="prarabdhasoni"
site[3]="superuser"
site[4]="twitter"
site[5]="irctc"
var=$(date +"%I_%M%p")
var2=$(date +"%I%p")
mkdir /home/oobhunter/"network lab"/q.1/$var2
mkdir /home/oobhunter/"network lab"/q.1/askubuntu/$var2
mkdir /home/oobhunter/"network lab"/q.4/$var2

for i in "${site[@]}"
do

wget -O /home/oobhunter/"network lab"/q.1/$var2/${i}_${var}.txt "http://www.spfld.com/cgi-bin/ping?remote_host=www.$i.com&dns=on&count=20&size=64" 
done
for ((i=1,pow=64;i<=6;i++))
do
	wget -O /home/oobhunter/"network lab"/q.1/askubuntu/$var2/${pow}byte.txt "http://www.spfld.com/cgi-bin/ping?remote_host=www.askubuntu.com&dns=on&count=20&size=$pow"
	((pow *=2))
	
done
for i in "${site[@]}"
do
wkhtmltopdf -p 172.16.114.206:35621 -s A3 "network-tools.com/default.asp?prog=trace&host=www.$i.com" /home/oobhunter/"network lab"/q.4/$var2/${i}_${var}.pdf
done


