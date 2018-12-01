#!/bin/bash
DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

if [ "$#" -ne 1 ]; then
    echo "Invalid parameters."
    echo "usage:"
    echo "    ./build.sh <output>"
    exit 1
fi

OUTPUT=${1}

# Clear the output file
printf "" > "${OUTPUT}"

# Iterate over all source files
find "${DIR}/src" -type f -print0 | while IFS= read -r -d $'\0' f; do
    echo "Adding: ${f}"
    printf "#\n# ${f}\n#\n\n" >> "${OUTPUT}"
    cat "${f}" >> "${OUTPUT}"
    printf "\n\n" >> "${OUTPUT}"
done;
