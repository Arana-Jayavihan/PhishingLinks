#!/bin/bash

{
	date=$(date)
	xh -d https://data.phishtank.com/data/online-valid.csv >> phishlinks.csv
	sleep 3
	git add phishlinks.csv
	git commit -m "Update $date"
	git push
}