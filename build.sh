#!/bin/bash
set -e

cd "$(dirname "$0")"

# Add MacTeX binaries to PATH if available
if [ -d "/Library/TeX/texbin" ] && [[ ":$PATH:" != *":/Library/TeX/texbin:"* ]]; then
  export PATH="/Library/TeX/texbin:$PATH"
fi

if ! command -v xelatex >/dev/null 2>&1; then
  echo "XeLaTeX is not installed. Install MacTeX or TinyTeX and try again."
  exit 1
fi

xelatex -interaction=nonstopmode me_resume.tex
xelatex -interaction=nonstopmode me_resume.tex

echo "Build complete: me_resume.pdf"
