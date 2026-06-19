#!/usr/bin/env bash
set -euo pipefail

# Prints a Markdown report with Git-history signals before reading code.

target_path="${1:-.}"

# --- Input validation -------------------------------------------------------

if ! git rev-parse --is-inside-work-tree >/dev/null 2>&1; then
  printf '%s\n' 'Error: this script must be run inside a Git work tree.' >&2
  exit 1
fi

if [ ! -e "$target_path" ]; then
  printf 'Error: path does not exist: %s\n' "$target_path" >&2
  exit 1
fi

repo_root="$(git rev-parse --show-toplevel)"

# --- Report helpers ---------------------------------------------------------

printf '# Quick Repository Insights\n\n'
printf -- '- Repository: `%s`\n' "$repo_root"
printf -- '- Analysis path: `%s`\n\n' "$target_path"

print_count_table() {
  local title="$1"
  local count_header="$2"
  local name_header="$3"

  printf '## %s\n\n' "$title"
  printf '| %s | %s |\n' "$count_header" "$name_header"
  printf '| ---: | --- |\n'
  awk '{ count=$1; $1=""; sub(/^ +/, ""); if ($0 != "") printf "| %s | `%s` |\n", count, $0 }'
  printf '\n'
}

print_commit_table() {
  local title="$1"

  printf '## %s\n\n' "$title"
  printf '| Commit | Message |\n'
  printf '| --- | --- |\n'
  awk '{ hash=$1; $1=""; sub(/^ +/, ""); gsub(/\|/, "\\|", $0); printf "| `%s` | %s |\n", hash, $0 }'
  printf '\n'
}

# --- Churn and ownership ----------------------------------------------------

printf '## Most Changed Files In The Last Year\n\n'
printf '| Changes | File |\n'
printf '| ---: | --- |\n'
git -C "$repo_root" log --format=format: --name-only --since="1 year ago" -- "$target_path" \
  | sort \
  | uniq -c \
  | sort -nr \
  | head -20 \
  | awk '{ count=$1; $1=""; sub(/^ +/, ""); if ($0 != "") printf "| %s | `%s` |\n", count, $0 }'
printf '\n'

git -C "$repo_root" shortlog -sn --no-merges HEAD \
  | print_count_table 'Contributors By Commit Count' 'Commits' 'Contributor'

git -C "$repo_root" shortlog -sn --no-merges --since="6 months ago" HEAD \
  | print_count_table 'Contributors By Commit Count In The Last Six Months' 'Commits' 'Contributor'

# --- Bug hotspots -----------------------------------------------------------

printf '## Bug-Related File Hotspots\n\n'
printf '| Bug-related commits | File |\n'
printf '| ---: | --- |\n'
git -C "$repo_root" log -i -E --grep="fix|bug|broken" --name-only --format='' -- "$target_path" \
  | sort \
  | uniq -c \
  | sort -nr \
  | head -20 \
  | awk '{ count=$1; $1=""; sub(/^ +/, ""); if ($0 != "") printf "| %s | `%s` |\n", count, $0 }'
printf '\n'

# --- Momentum ---------------------------------------------------------------

printf '## Commit Volume By Month\n\n'
printf '| Month | Commits |\n'
printf '| --- | ---: |\n'
git -C "$repo_root" log --format='%ad' --date=format:'%Y-%m' \
  | sort \
  | uniq -c \
  | awk '{ printf "| %s | %s |\n", $2, $1 }'
printf '\n'

# --- Firefighting -----------------------------------------------------------

printf '## Firefighting Keyword Counts In The Last Year\n\n'
printf '| Keyword | Commits |\n'
printf '| --- | ---: |\n'
git -C "$repo_root" log --format='%s' --since="1 year ago" \
  | awk 'BEGIN { IGNORECASE=1 }
      /revert/ { counts["revert"]++ }
      /hotfix/ { counts["hotfix"]++ }
      /emergency/ { counts["emergency"]++ }
      /rollback/ { counts["rollback"]++ }
      END {
        for (keyword in counts) print counts[keyword], keyword
      }' \
  | sort -nr \
  | awk '{ printf "| %s | %s |\n", $2, $1 }'
printf '\n'

firefighting_commits="$(mktemp)"
trap 'rm -f "$firefighting_commits"' EXIT

if git -C "$repo_root" log --oneline --since="1 year ago" | grep -iE 'revert|hotfix|emergency|rollback' >"$firefighting_commits"; then
  print_commit_table 'Firefighting Commits In The Last Year' <"$firefighting_commits"
else
  printf '## Firefighting Commits In The Last Year\n\n'
  printf 'No matching commits found.\n\n'
fi
