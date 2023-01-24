#!/bin/bash

set -e

echo "What is the name of the new document? (e.g, Interpolation for PDL)"

read documentname

document="${documentname// /-}"

mkdir $document
mkdir $document/images
touch $document/macros.tex
touch $document/$document.tex

echo """\section{$documentname}
""" >> $document/$document.tex

echo """
{
    \graphicspath{ {./$document/images/} }
    \input{$document/macros}
    \input{$document/$document}
}""" >> content.tex
