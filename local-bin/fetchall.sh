# entering all subdirectories (one level) and git-fetching from within
for f in `find . -mindepth 1 -maxdepth 1 -type d`
do
	echo -e "\n-----------------------"
	(git --git-dir="$f/.git" rev-parse --is-inside-work-tree >/dev/null 2>&1) && (
		echo -e "working in $f\n"
		cd "$f"
		git fetch -v
		cd ..
	) || echo "No .git in $f, skipping"
done
