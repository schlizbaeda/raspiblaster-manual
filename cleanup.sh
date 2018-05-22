#!/bin/bash
if [ $# -lt 1 ]; then
  echo "usage:"
  echo "    cleanup.sh <language>"
  echo ""
  echo "for example"
  echo "    ./cleanup.sh en"
  echo "    ./cleanup.sh de"
  echo ""
  echo "This program removes all temorary files which are created by"
  echo "pdflatex raspiblaster_<language>"
  exit 1
fi
echo "cleaning up for language version '$1':"
if [ -d chapter/$1 ]; then
  # The labguage implementation exists in chapters: Clean up
  rm raspiblaster_$1.aux raspiblaster_$1.idx raspiblaster_$1.lo? raspiblaster_$1.nlo raspiblaster_$1.out raspiblaster_$1.toc
  rm chapter/$1/*.aux
  rm layout/*.aux layout/$1/*.aux
else  
  echo "The raspiblaster manual doesn't exist for language '$1' yet." 
  echo "But don't hesitate to add it :-)" 
  exit 2
fi

