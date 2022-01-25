all: build

build:
	bundle exec jekyll build -d docs
	cp CNAME docs/

preview:
	bundle exec jekyll serve --force_polling --livereload

diff:
	git status

publish:
	git add -u
	git add assets
	git add docs
	git commit -m "automatic commit"
	git push origin master