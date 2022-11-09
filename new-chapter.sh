#!/bin/bash

set -e

echo "What is the name of the new chapter? (e.g, Mathematical Background)"

read chaptername

chapter="${chaptername// /-}"

mkdir $chapter
mkdir $chapter/images
touch $chapter/macros.tex
touch $chapter/$chapter.tex

echo """\section{Introduction}
""" >> $chapter/$chapter.tex

echo """
{
    \chapter{$chaptername}
    \graphicspath{ {./$chapter/images/} }
    \input{$chapter/macros}
    \input{$chapter/$chapter}
}""" >> content.tex