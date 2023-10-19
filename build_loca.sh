#!/bin/bash

# Change to the directory containing the script, no matter where the script is run from.
cd "$(dirname "$0")"

# Install Python dependencies
# pip install jinja2 pyyaml

# Run the Python script to generate the TeX file
python _cv/generate.py

# Compile the TeX file to produce a PDF
pdflatex -output-directory=_cv/ _cv/resume.tex

# Open the generated PDF in the default PDF viewer (this line is optional and OS-dependent)
# On Linux:
xdg-open _cv/resume.pdf
# On macOS, replace the above line with:
# open _cv/output/resume.pdf

echo "CV generated successfully!"