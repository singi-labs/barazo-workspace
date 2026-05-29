#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SHARED="$SCRIPT_DIR/shared.md"
REPOS_DIR="$SCRIPT_DIR/repos"
OUTPUT_DIR="$SCRIPT_DIR/dist"

mkdir -p "$OUTPUT_DIR"

for repo_file in "$REPOS_DIR"/*.md; do
  repo_name="$(basename "$repo_file" .md)"
  output="$OUTPUT_DIR/$repo_name.md"

  # Concatenate: repo-specific header + separator + shared base.
  # Substitute <repo> placeholders in shared.md with the actual repo name so
  # rendered commands and paths are directly runnable per repo.
  cat "$repo_file" > "$output"
  printf '\n---\n\n' >> "$output"
  sed "s/<repo>/$repo_name/g" "$SHARED" >> "$output"

  echo "Built: $output"
done
