# Discovery & Distribution

[![CI](https://github.com/ANAMIZED/discovery-distribution/actions/workflows/ci.yml/badge.svg)](https://github.com/ANAMIZED/discovery-distribution/actions/workflows/ci.yml)
[![License](https://img.shields.io/badge/License-Apache_2.0-blue.svg)](LICENSE)
[![Dogfood](https://img.shields.io/badge/dogfood-self--productized-purple.svg)](PLAYBOOK.md)

**Productize domain insight into a multi-surface, verified, elite-packaged GitHub product.**

This repository *is* the Discovery & Distribution Service.
It was created by running its own process on itself (**dogfood**).

A senior engineer (or coding agent) with only this source and `README.md` can:

1. Understand the six-stage loop
2. Run the process on a new domain
3. Install the skill into consumer repos
4. Verify the package is complete via `scripts/verify.sh`

**[Support Public Goods](https://donate.stripe.com/00w5kE3wOg5L8Jn2F243S00)**

## The loop

| Stage | Output |
|-------|--------|
| **1. Discovery** | Market / domain research, gaps, demand signals |
| **2. Synthesis** | Product vision, surfaces, acceptance contract |
| **3. Build** | Kernel + surfaces (API, CLI, SDK, MCP, skills, AGENTS.md) as applicable |
| **4. Verify** | Single script / gate that proves every surface works |
| **5. Elite package** | LICENSE, SECURITY, CI, CoC, CONTRIBUTING, badges, structure |
| **6. Distribute** | Public GitHub repo + skill installed into consumer trees |

## Quick start

```bash
cp -R skills/discovery-distribution /path/to/consumer-repo/skills/
cat PLAYBOOK.md
bash scripts/verify.sh
```

## Surfaces

| Surface | Path |
|---------|------|
| Skill | `skills/discovery-distribution/SKILL.md` |
| Playbook | `PLAYBOOK.md` |
| Agent contract | `AGENTS.md` |
| Templates | `templates/` |
| Verify contract | `scripts/verify.sh` |

## Dogfood proof

This repo was produced by the same stages it documents. First consumer example: [server-os](https://github.com/ANAMIZED/server-os).

## License

Apache-2.0
