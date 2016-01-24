from bs4 import BeautifulSoup
import urllib2 
url = urllib2.urlopen("http://network-tools.com/default.asp?prog=trace&host=www.stackoverflow.com/")
content = url.read()
soup = BeautifulSoup(content,'html.parser')
print([i.text for i in soup.select("#AutoNumber2")][0]) 

