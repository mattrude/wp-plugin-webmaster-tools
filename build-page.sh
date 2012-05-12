#!/bin/bash

rm -f index.html README.md
cat header > index.html && \
  git show master:README.md > README.md && \
  markdown README.md >> index.html && \
  cat footer >> index.html
rm -f README.md
