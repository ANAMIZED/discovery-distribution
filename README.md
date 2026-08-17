# Discovery & Distribution

[![CI](https://github.com/ANAMIZED/discovery-distribution/actions/workflows/ci.yml/badge.svg)](https://github.com/ANAMIZED/discovery-distribution/actions/workflows/ci.yml)
[![License](https://img.shields.io/badge/License-Apache_2.0-blue.svg)](LICENSE)
[![Skill](https://img.shields.io/badge/skill-discovery--distribution-purple.svg)](skills/discovery-distribution/SKILL.md)
[![Dogfood](https://img.shields.io/badge/dogfood-self--productized-purple.svg)](PLAYBOOK.md)
[![AGENTS](https://img.shields.io/badge/AGENTS.md-contract-orange.svg)](AGENTS.md)

**Productize domain insight into a multi-surface, verified, elite-packaged GitHub product.**

This repository *is* the Discovery & Distribution Service (playbook + skill + templates). It dogfoods its own process.

> **Scope note:** This is a meta packaging/distribution repo, not an agentic OS runtime. Consumer products (rui, server-os, OpenGOS, …) carry SDK · API · CLI · MCP · multi-agent workflows. Stage 3 of this playbook *requires* those surfaces on product repos.

**[Support Public Goods](https://donate.stripe.com/00w5kE3wOg5L8Jn2F243S00)**

## Surfaces (this repo)

| Surface | Path |
|---------|------|
| Skill | `skills/discovery-distribution/SKILL.md` |
| Playbook | `PLAYBOOK.md` |
| Distribution | `DISTRIBUTION.md` |
| Agent contract | `AGENTS.md` |
| Templates | `templates/` (includes API/CLI/SDK/MCP stubs guidance) |
| Verify | `scripts/verify.sh` |
| CI | `.github/workflows/ci.yml` |

## Quick start

```bash
cp -R skills/discovery-distribution /path/to/consumer-repo/skills/
cat PLAYBOOK.md
bash scripts/verify.sh
```

## License

Apache-2.0
