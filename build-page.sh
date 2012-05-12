#!/bin/bash

rm -f index.html README.md
cat header > index.html && \
  git show master:README.md > README.md && \
  sed -i '/# WordPress Webmaster Tools Plugin/a <p><a href="/">mattrude.github.com</a> / <strong>WordPress Webmaster Tools Plugin</strong></p>' README.md && \
  markdown README.md >> index.html && \
  cat footer >> index.html
rm -f README.md
