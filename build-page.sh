#!/bin/bash

PAGENAME="WordPress Webmaster Tools Plugin"

rm -f index.html README.md
cat header > index.html && \
  git show master:README.md > README.md && \
  sed -i "/# $PAGENAME/c <div id=\"title\"><h1>mattrude.github.com <i>&mdash; </i>$PAGENAME</h1></div><p><a href=\"/\">mattrude.github.com</a> / <strong>$PAGENAME</strong></p>" README.md && \
  markdown README.md >> index.html && \
  cat footer >> index.html
rm -f README.md
