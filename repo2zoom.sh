#!/bin/bash
# creates one 16:9 per example

mkdir -p zoom-backgrounds

rm -rf zoom-backgrounds/* 

for testcase in *md
do
  echo $testcase
  pandoc -o $testcase.pdf -V documentclass=extarticle -V fontsize=14pt -V fontfamily="noto-sans"  -V geometry:margin=0pt -V geometry=landscape  -V papersize=a5 $testcase
  
  # we take only the first age
  pdftk A=$testcase.pdf  cat A1 output testcase-firstpage.pdf

  # we want a white background
  convert -density 400 -background white -alpha remove -alpha off  testcase-firstpage.pdf zoom-backgrounds/$testcase.png

  rm $testcase.pdf
done




