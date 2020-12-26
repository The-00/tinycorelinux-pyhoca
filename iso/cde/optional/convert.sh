FILES="$(ls | grep -E '\.tcz')"

for I in  ${FILES}
do
	echo ${I} >/tmp/old
	NEW="$(cat /tmp/old | sed 's/\.tcz[lm]*/\.tcz/g')"
	sudo mv ${I} ${NEW}
done 
