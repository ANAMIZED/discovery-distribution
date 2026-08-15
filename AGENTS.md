# AGENTS.md — Discovery & Distribution

Contract for coding agents working on this repository or running the process.

## What this is

A productized **discovery → synthesis → build → verify → elite-package → distribute** loop.
This repo dogfoods the loop: it exists because the process was applied to itself.

## Hard rules

1. **Dogfood when creating the package itself** — the package must satisfy its own verify contract.
2. **Own repo + local skill** — canonical source in this repo; install `skills/discovery-distribution/` into consumers.
3. **Single acceptance gate** — every product must have a verify script a stranger can run.
4. **Fail closed on packaging** — no public distribute without LICENSE, README, and verify green.
5. **Prefer small, complete slices** — each stage leaves the tree reviewable.

## Verify

```bash
bash scripts/verify.sh
```

All checks must pass before claiming the package is complete.
