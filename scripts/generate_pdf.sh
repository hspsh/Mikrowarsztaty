#!/bin/bash
set -x

cd ../pl
rm instrukcja.pdf
files="$(ls | sort | egrep "[0-9]+[^.]*\.md" | tr "\n" " " )"
pandoc --toc -o instrukcja.pdf $files
