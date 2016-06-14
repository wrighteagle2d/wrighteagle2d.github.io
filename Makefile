all:
	./list_all.sh
	cat status.md index_body.md > README.md

sync: all
	git add .
	git commit -m "updated"
	git push

