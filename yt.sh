#!/bin/bash
# search videos on youtube and play them in mpv, without an API key
# Sayan G

if [ -z "$1" ]; then 
	echo -n "Search: "
	read -r query
else
	query="$*"
fi
if [ -z "$query" ]; then exit; fi 
# sanitise the query
query=$(sed \
	-e 's|+|%2B|g'\
	-e 's|#|%23|g'\
	-e 's|&|%26|g'\
	-e 's| |+|g'\
	<<< "$query")
# fetch the results with the $query and grep the video id and title
# replace " with “ so that entire title is displayed even if it has "
videoids=$(
	curl -s "https://www.youtube.com/results?search_query=$query" | \
	grep -oP '"videoRenderer":{"videoId":".{11}".+?"text":".+?[^\\](?=")' | \
	sed 's|\\\"|“|g' | \
	awk -F\" '{ print $6 " " $NF}'
)
# prompt the results to user infinitely until they exit (escape)
while true; do
	videoid=$(
		echo -e "$videoids" | \
		fzf --with-nth='2..-1' | \
		cut -d' ' -f1
		# cut -d' ' -f2,2- |\
		# dmenu -l 30

	)
	if [ -z "$videoid" ]; then exit; fi	
	mpv "https://youtu.be/$videoid"
done
