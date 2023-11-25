#!/bin/bash

# Set the output directory
output_directory="/Users/michael/Documents/uni/4.Semester/Masterthesis/out"

# Compile the LaTeX document to generate .bcf file
pdflatex -file-line-error -interaction=nonstopmode -synctex=1 -output-format=pdf -output-directory="$output_directory" main.tex

# Run biber to process bibliography
biber --input-directory="/Users/michael/Documents/uni/4.Semester/Masterthesis/out" main

# RUN CA
#biber --input-directory="/Users/michael/Documents/uni/4.Semester/Masterthesis/" main
# COPY LE RESULTAT DANS OUT
# RUN TOUT A NOUVEAU

# Run makeglossaries to process glossaries
makeglossaries main

# Compile the LaTeX document again to resolve references
pdflatex -file-line-error -interaction=nonstopmode -synctex=1 -output-format=pdf -output-directory="$output_directory" main.tex