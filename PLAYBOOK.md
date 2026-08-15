# Playbook — Discovery & Distribution

Executable process for humans and agents.

## Stage 1 — Discovery

**Goal:** Evidence of demand and gaps.

Collect who pays, cost/risk drivers, existing solutions, standards (MCP, skills, AGENTS.md, x402).

**Exit:** Written problem statement + 3–7 concrete gaps.

## Stage 2 — Synthesis

**Goal:** Product definition a stranger can implement against.

Define one-line identity, surfaces, acceptance contract, non-negotiables.

**Exit:** README-quality vision + verify checklist draft.

## Stage 3 — Build

**Goal:** Minimum complete system for every declared surface.

Order: domain kernel → safety/cost → primary API/runtime → secondary surfaces → skill + AGENTS.md.

**Exit:** Every surface has a real entrypoint reachable from README.

## Stage 4 — Verify

**Goal:** One command with no tribal knowledge.

Script covers each surface; prefer offline/mock; exit non-zero on failure.

**Exit:** `bash scripts/verify.sh` green.

## Stage 5 — Elite package

**Goal:** Top-tier operational maturity.

LICENSE, README, SECURITY, CONTRIBUTING, CODE_OF_CONDUCT, CHANGELOG, CI, issue/PR templates.

**Exit:** Checklist complete; CI runs verify.

## Stage 6 — Distribute

**Goal:** Public canonical repo + local skill where agents work.

1. Create public GitHub repository
2. Push complete tree
3. Tag release when stable
4. Install skill into consumers: `cp -R skills/discovery-distribution /path/to/consumer/skills/`
5. Point consumer AGENTS.md at the skill

**Exit:** Clone URL works; consumer agents can load the skill.

## Dogfood rule

When the product is this process itself, stages 1–6 must produce **this repository**.
`scripts/verify.sh` is the proof.
