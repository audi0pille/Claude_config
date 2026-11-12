#!/usr/bin/env bash
# Spielt die gemeinsame Claude-Konfiguration ein: CLAUDE.md und alle Skills nach ~/.claude.
# Lokal: bash setup.sh   (im geklonten Claude_config-Ordner)
set -euo pipefail
src="$(cd "$(dirname "$0")" && pwd)"
mkdir -p "$HOME/.claude/skills"
cp "$src/CLAUDE.md" "$HOME/.claude/CLAUDE.md"
for d in "$src"/skills/*/; do
  name="$(basename "$d")"
  rm -rf "$HOME/.claude/skills/$name"
  cp -r "$d" "$HOME/.claude/skills/$name"
done
echo "Claude_config eingespielt: CLAUDE.md und $(ls "$src/skills" | wc -l) Skill(s)"
