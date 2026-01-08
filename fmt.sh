#!/bin/bash
set -e
set -o pipefail

section() {
  echo -e "\n\033[1;34m==> $1\033[0m"
}

section "⏳ Reformatting HTML templates with djlint"
python -m djlint web/*.html web/**/*.html --reformat --format-css --format-js

section "⏳ Linting HTML templates with djlint"
python -m djlint web/*.html web/**/*.html --lint --check --format-css --format-js

echo -e "✅ \033[1;32mAll formatting done!\033[0m\n"
