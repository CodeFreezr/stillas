#!/bin/bash


download_hugo() {
	# see naming convention in repo https://github.com/gohugoio/hugo/releases
	version="0.26";
	platform="macOS-64bit";
	format="tar.gz";

	url="https://github.com/gohugoio/hugo/releases/download/v${version}/hugo_${version}_${platform}.${format}"

	wget $url;
	tar xzf *.$format;
	rm -rf README.md LICENSE.md *.$format;
}

initializer() {
	download_hugo;
}

initializer;
