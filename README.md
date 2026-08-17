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
5. Execute organic distribution across MCP registries and awesome-lists

**[Support Public Goods](https://donate.stripe.com/00w5kE3wOg5L8Jn2F243S00)**

### Non-custodial USDC (preferred for agents)

| Network | Address | Explorer |
|---------|---------|----------|
| **Base** | `0xD3d0E9eDAe3Ac7bb199a8EAA761BdA423b878438` | [basescan](https://basescan.org/address/0xD3d0E9eDAe3Ac7bb199a8EAA761BdA423b878438) |
| **Ethereum** | `0xD3d0E9eDAe3Ac7bb199a8EAA761BdA423b878438` | [etherscan](https://etherscan.io/address/0xD3d0E9eDAe3Ac7bb199a8EAA761BdA423b878438) |
| **Solana** | `ETQwWf19axArsY493UfC6bxe2BmEzmzvCb58PPnC38A` | [solscan](https://solscan.io/account/ETQwWf19axArsY493UfC6bxe2BmEzmzvCb58PPnC38A) |

## The loop

| Stage | Output |
|-------|--------|
| **1. Discovery** | Market / domain research, gaps, demand signals |
| **2. Synthesis** | Product vision, surfaces, acceptance contract |
| **3. Build** | Kernel + surfaces (API, CLI, SDK, MCP, skills, AGENTS.md) as applicable |
| **4. Verify** | Single script / gate that proves every surface works |
| **5. Elite package** | LICENSE, SECURITY, CI, CoC, CONTRIBUTING, badges, structure |
| **6. Distribute** | Public GitHub repo + skill + **registries / awesome-lists** |

## Agent discovery contract

Short rules for agents packaging or listing ANAMIZED (and consumer) products:

| Topic | Rule |
|-------|------|
| **`AGENTS.md` (required)** | State: (1) what the project is, (2) how to run & verify, (3) hard boundaries / fail-closed rules, (4) surfaces that must stay working. Update it when public surfaces change. |
| **Registries — hit in this order** | **1.** Official MCP Registry — root `server.json` + `mcp-publisher publish` · **2.** Glama — `glama.json` + repo submit · **3.** mcp.so — web form · **4.** Awesome-lists — one high-quality PR per list |
| **`🤖🤖🤖`** | Use **only** when the *target list* documents it (today: [punkpeye/awesome-mcp-servers](https://github.com/punkpeye/awesome-mcp-servers) CONTRIBUTING). Append to the **PR title** for agent fast-track. Not a global ranking signal — never spray it on unrelated READMEs or random PRs. |
| **Operator docs** | [DISTRIBUTION.md](DISTRIBUTION.md) · [docs/MCP_PUBLISHER_CHECKLIST.md](docs/MCP_PUBLISHER_CHECKLIST.md) · [docs/AWESOME_LIST_PRS.md](docs/AWESOME_LIST_PRS.md) |

## Distribution (Stage 6)

| Doc | Purpose |
|-----|--------|
| **[DISTRIBUTION.md](DISTRIBUTION.md)** | Full checklist: MCP Registry, Glama, mcp.so, GitHub signals |
| **[docs/MCP_PUBLISHER_CHECKLIST.md](docs/MCP_PUBLISHER_CHECKLIST.md)** | One-shot `mcp-publisher` per repo |
| **[docs/AWESOME_LIST_PRS.md](docs/AWESOME_LIST_PRS.md)** | Ready-to-paste PR blurbs + punkpeye fork status |

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
| Distribution | `DISTRIBUTION.md` |
| Agent contract | `AGENTS.md` + this section |
| Templates | `templates/` |
| Verify contract | `scripts/verify.sh` |

## Dogfood proof

This repo was produced by the same stages it documents. First consumer example: [server-os](https://github.com/ANAMIZED/server-os).

## License

Apache-2.0
