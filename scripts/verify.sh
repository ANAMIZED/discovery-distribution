#!/usr/bin/env bash
# Discovery & Distribution — package completeness contract (dogfood).
set -euo pipefail
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
PASS=0
FAIL=0
green() { printf "\033[32m✓ %s\033[0m\n" "$*"; PASS=$((PASS+1)); }
red()   { printf "\033[31m✗ %s\033[0m\n" "$*"; FAIL=$((FAIL+1)); }

need_file() {
  if [[ -f "$ROOT/$1" ]]; then green "present: $1"
  else red "missing: $1"; fi
}

need_file "README.md"
need_file "LICENSE"
need_file "AGENTS.md"
need_file "PLAYBOOK.md"
need_file "SECURITY.md"
need_file "CONTRIBUTING.md"
need_file "CODE_OF_CONDUCT.md"
need_file "CHANGELOG.md"
need_file "skills/discovery-distribution/SKILL.md"
need_file "templates/skill/SKILL.md"
need_file "templates/repo/README.md"
need_file "templates/verify/verify.sh"
need_file ".github/workflows/ci.yml"
need_file "scripts/verify.sh"

SKILL="$ROOT/skills/discovery-distribution/SKILL.md"
if head -1 "$SKILL" | grep -q '^---' && grep -q 'name: discovery-distribution' "$SKILL"; then
  green "skill frontmatter valid"
else
  red "skill frontmatter invalid"
fi

if grep -q 'Dogfood' "$ROOT/README.md" && grep -q 'scripts/verify.sh' "$ROOT/README.md"; then
  green "README documents dogfood + verify"
else
  red "README missing dogfood/verify markers"
fi

for stage in Discovery Synthesis Build Verify "Elite package" Distribute; do
  if grep -qi "$stage" "$ROOT/PLAYBOOK.md"; then
    green "PLAYBOOK has stage: $stage"
  else
    red "PLAYBOOK missing stage: $stage"
  fi
done

if grep -q 'verify.sh' "$ROOT/AGENTS.md" && grep -qi 'dogfood' "$ROOT/AGENTS.md"; then
  green "AGENTS.md has verify + dogfood rules"
else
  red "AGENTS.md incomplete"
fi

echo ""
echo "=============================="
echo " Discovery-Distribution verify"
echo "=============================="
echo "  PASSED: $PASS"
echo "  FAILED: $FAIL"
echo "=============================="

if [[ "$FAIL" -eq 0 ]]; then
  echo "ALL CHECKS PASSED — package dogfoods its own process."
  exit 0
else
  echo "SOME CHECKS FAILED"
  exit 1
fi
