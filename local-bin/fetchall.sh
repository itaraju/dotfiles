# entering all subdirectories (one level) and git-fetching from within
for f in `find . -mindepth 1 -maxdepth 1 -type d`
do
	echo -e "\n-----------------------"
	echo -e "working in $f\n"
	cd "$f"
	git fetch -v
	cd ..
done
