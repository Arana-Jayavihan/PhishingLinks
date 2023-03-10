#!/bin/bash
. /home/kali/.bashrc
{
	cd PhishingLinks/
	date=$(date)
	/usr/local/bin/xh -d https://data.phishtank.com/data/online-valid.csv -o phishlinks.csv
	/usr/bin/git add phishlinks.csv
	/usr/bin/git commit -m "Update $date"
	/usr/bin/git push
}