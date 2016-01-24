echo "echo "http://www.joyofdata.de/blog/using-linux-shell-web-scraping/"  |
	wget -O- -i- | 
   hxnormalize -x |  hxselect -i "div.entry-content" |  lynx -stdin -dump "