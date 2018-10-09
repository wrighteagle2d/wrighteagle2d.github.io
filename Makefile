all:
	./bin/list.sh
	cat status.md index_body.md > README.md
	python2 ./bin/google-sitemapgen --config=sitemap_config.xml

sync: all
	git add .
	git commit -m "updated"
	git push

