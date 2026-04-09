#!/bin/bash
#
# dream.sh — Agent dreaming via cron
#
# Narratives fade. The ONE key insight goes to MEMORY.md [dream].
# A one-line record goes to .dream-journal.
# stdout is discarded — no one is listening.
#
# Usage:
#   ./scripts/dream.sh [project_dir] [light|deep]
#
# crontab examples:
#   0 0 * * * cd /path/to/your/project && ./scripts/dream.sh
#   0 0 * * 0 cd /path/to/your/project && ./scripts/dream.sh . deep
#

PROJECT_DIR="${1:-$(pwd)}"
DEPTH="${2:-light}"

cd "$PROJECT_DIR" || exit 1

if [ "$DEPTH" = "deep" ]; then
  claude -p "做个深度的梦" > /dev/null 2>&1
else
  claude -p "做个梦" > /dev/null 2>&1
fi
