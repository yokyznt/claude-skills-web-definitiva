#!/usr/bin/env bash
set -e
D="${CLAUDE_SKILLS_DIR:-$HOME/.claude/skills}"
mkdir -p "$D"
cd "$(dirname "$0")/skills"
for s in */; do rm -rf "$D/${s%/}"; cp -R "$s" "$D/"; done
echo "Instaladas $(ls -d */ | wc -l) skills en $D"
