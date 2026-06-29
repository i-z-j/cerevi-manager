#!/usr/bin/env bash
set -euo pipefail

SRC="${1}"
DST="${2}"
DRY_RUN="${DRY_RUN:-}"

if [[ ! -d "$DST" ]]; then
    echo "Error: destination '$DST' does not exist"
    exit 1
fi

while IFS= read -r -d '' src_file; do
    rel="${src_file#$SRC/}"
    target="$DST/$rel"
    parent=$(dirname "$target")

    if [[ ! -d "$parent" ]]; then
        echo "Skipping $rel: $parent does not exist"
        continue
    fi

    if [[ -n "$DRY_RUN" ]]; then
        echo "Would copy: $rel"
    else
        cp -f "$src_file" "$target"
        echo "Copied: $rel"
    fi
done < <(find "$SRC" -name "*.json" -type f -print0)

echo "Metadata sync complete."