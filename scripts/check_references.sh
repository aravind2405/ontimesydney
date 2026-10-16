#!/usr/bin/env bash
# Fails if any AI-tool reference appears in the repo.
# Pattern is split so this file never matches itself.
set -euo pipefail

pattern="cl""aude|anthro""pic|chat""gpt|open""ai"

if grep -rniE "$pattern" . \
  --exclude-dir={.git,.venv,target,dbt_packages,data,.ruff_cache,.pytest_cache}; then
  echo "FAIL: AI-tool references found (listed above)"
  exit 1
fi
echo "ok: no AI-tool references"
