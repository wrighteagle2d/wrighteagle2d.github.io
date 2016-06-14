all:
	./list_all.sh

sync: all
	git add .
	git commit -m "updated"
	git push
	linkchecker http://wrighteagle2d.github.io/

