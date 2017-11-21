#!/bin/bash

configure_stillas() {
	# see naming convention in repo https://github.com/gohugoio/hugo/releases
	version="0.26";
	platform="macOS-64bit";
	format="tar.gz";

	url="https://github.com/gohugoio/hugo/releases/download/v${version}/hugo_${version}_${platform}.${format}"

	# install Hugo
	wget $url;
	tar xzf *.$format hugo;
	rm -rf *.$format;

	# create a new site and basic theme
	./hugo new site site;
	cd site/themes/ && \
	git clone https://github.com/stillas/theme basic-theme && \
	cd basic-theme && \
	rm -rvf .git && \
	npm i && \
	npm run css-compile && ENV=development npm run js-compile && \
	git init;

	# git clean
	cd ../../../ && rm -rfv .git*;
}

initializer() {
	configure_stillas;
}

initializer;
