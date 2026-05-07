.PHONY: install update serve build clean

install:
	bundle install

update:
	bundle update

serve:
	bundle exec jekyll serve --livereload

build:
	JEKYLL_ENV=production bundle exec jekyll build

clean:
	bundle exec jekyll clean
