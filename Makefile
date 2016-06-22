all:
	./list_robocup_tdps.sh
	./list_main.sh
	cat status.md index_body.md > README.md
	google-sitemapgen --config=sitemap_config.xml

sync: all
	git add .
	git commit -m "updated"
	git push

