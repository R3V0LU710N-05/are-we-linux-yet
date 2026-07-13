#!/usr/bin/env bash
set -euo pipefail

fragments=(
  "_includes/Header.md"
  "_includes/GeneralDesktop.md"
  "_includes/GraphicsAudioHardware.md"
  "_includes/Gaming.md"
  "_includes/Distro.md"
  "_includes/CreativeSuites.md"
  "_includes/Contribute.md"
  "_includes/License.md"
)

out="README.md"
tmp="$(mktemp)"

for f in "${fragments[@]}"; do
  if [[ ! -f "$f" ]]; then
    echo "Missing fragment: $f" >&2
    exit 1
  fi
  echo "" >> "$tmp"
  cat "$f" >> "$tmp"
done

mv "$tmp" "$out"
echo "Built $out"

