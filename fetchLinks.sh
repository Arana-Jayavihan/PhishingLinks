#!/bin/bash
. /home/kali/.bashrc
{
	cd PhishingLinks/
	date=$(date)
	/usr/bin/wget https://data.phishtank.com/data/online-valid.csv -O phishlinks.csv
	/usr/bin/git add phishlinks.csv
	/usr/bin/git commit -m "Update $date"
	/usr/bin/git push
}