#!/bin/bash
for i in $(ls /tmp/mpvSockets/*); do
	echo '{ "command": ["set_property", "pause", true] }' | socat - "$i";
done
# Socat  is  a  command  line based utility that establishes two bidirec-tional byte streams  and	 transfers  data  between  them.
# available on Linux and FreeBSD, propably most unixes. you can also use 
