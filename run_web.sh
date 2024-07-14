#!/bin/bash

# rm -rf docs/MASTG
# rm -rf docs/MASWE
rm -rf docs/MASTG/tests-beta
rm -rf docs/MASTG/demos

./src/scripts/structure_masvs.sh
./src/scripts/structure_mastg.sh
python3 src/scripts/transform_files.py
python3 src/scripts/populate_dynamic_pages.py
python3 src/scripts/generate_cross_references.py
# python3 src/scripts/generate_redirects.py
mkdocs serve -a 0.0.0.0:8000
