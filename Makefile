build:
	docker run --rm -it -v $$(pwd):/src klakegg/hugo:0.101.0-ext-debian

serve:
	docker run --rm -it -v $$(pwd):/src -p 1313:1313 klakegg/hugo:0.101.0-ext-debian server

# make new-post TITLE="my-shiny-title" 
new-post:
	docker run --rm -it -v $$(pwd):/src klakegg/hugo:0.101.0-ext-debian new --kind post-bundle post/$$(date +'%Y-%m-%d')-$(TITLE)