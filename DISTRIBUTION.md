# DISTRIBUTION.md — Organic discovery across GitHub & agent registries

Executable distribution checklist for ANAMIZED public products.
Uses the same surfaces the discovery-distribution skill defines: AGENTS.md, SKILL.md, MCP metadata, verify contracts.

## 1. Agent-native surfaces (required on every public product repo)

| File | Purpose |
|------|--------|
| `AGENTS.md` | Coding-agent contract (what / how / boundaries) |
| `SKILL.md` or `skills/*/SKILL.md` | Skill discovery for agent skill catalogs |
| `server.json` | Official MCP Registry metadata (`io.github.ANAMIZED/...`) |
| `glama.json` | Glama MCP registry indexing |
| `README.md` | Human + agent entry; demos above the fold |
| `scripts/verify.sh` | Stranger-runnable acceptance gate |
| `.github/workflows/publish-mcp.yml` | OIDC publish to official MCP Registry on every `v*` release |

**Status (2026-08-26):**

| Repo | AGENTS.md | server.json | publish-mcp.yml | Official registry |
|------|-----------|-------------|-----------------|-------------------|
| YodMCP | ✅ | ✅ | ✅ release + OIDC | `io.github.ANAMIZED/yodmcp` |
| SuperAgenticMCP | ✅ | ✅ | ✅ release + OIDC | `io.github.ANAMIZED/superagenticmcp` |
| OpenGOS | ✅ | ✅ | ✅ release + OIDC | `io.github.ANAMIZED/opengos` |
| NeedRail | ✅ | ✅ | ✅ release + OIDC | `io.github.ANAMIZED/needrail` |
| Server-OS | ✅ | ✅ | ✅ release + OIDC | `io.github.ANAMIZED/server-os` |
| OpenMesha | ✅ | ✅ | ✅ release + OIDC | `io.github.ANAMIZED/openmesha` |
| LRSI | ✅ | ✅ | ✅ release + OIDC | `io.github.ANAMIZED/lrsi` |
| x402-cloudflare-starter | ✅ | ✅ | ✅ release + OIDC | `io.github.ANAMIZED/x402-cloudflare-starter` |

See `docs/REGISTRY_STATUS.md` for Glama / mcp.so / awesome-list leftovers.

## 2. Official MCP Registry (the distribution spine)

There is one official catalog: `https://registry.modelcontextprotocol.io`.
PulseMCP and other sub-registries ingest it. Glama / Smithery / mcp.so still need a claim.

### Automatic path (preferred)

1. Keep `server.json` valid (`name` = `io.github.ANAMIZED/<repo-slug>`).
2. If `packages[]` points at PyPI/npm, that package version must already be public.
3. Cut a release:

```bash
git tag v0.2.0
git push origin v0.2.0
# or GitHub → Releases → Publish release
```

4. `.github/workflows/publish-mcp.yml` then:
   - authenticates with **GitHub OIDC** (`mcp-publisher login github-oidc`)
   - stamps `server.json` `.version` from the tag
   - stamps `packages[].version` only when it already matched the previous `.version`
   - runs `mcp-publisher publish`

No PAT. Permission required: `id-token: write`.
Org membership for ANAMIZED must be **public** or OIDC namespace checks fail.

Reusable workflow copy lives at:
`.github/workflows/publish-mcp-registry.yml` in this repo.

### Manual fallback

```bash
mcp-publisher login github
mcp-publisher publish
```

```bash
curl "https://registry.modelcontextprotocol.io/v0.1/servers?search=io.github.ANAMIZED"
```

### Other directories (not automatic)

| Registry | How |
|----------|-----|
| **PulseMCP** | Ingests official registry (~daily / weekly) |
| **Glama** | Claim the GitHub repo (`glama.json`) |
| **mcp.so** | Web form + GitHub login |
| **Smithery** | Separate publish; hosted HTTP `/mcp` preferred |

## 3. Awesome-lists (PR targets)

| List | Category suggestion | Primary repos |
|------|---------------------|---------------|
| [punkpeye/awesome-mcp-servers](https://github.com/punkpeye/awesome-mcp-servers) | Finance / Public goods / Agents | OpenGOS, NeedRail |
| [DhanushNehru/awesome-mcp-servers](https://github.com/DhanushNehru/awesome-mcp-servers) | Development & DevOps / AI Agents | Server-OS, LRSI, OpenMesha |
| x402 / crypto payment lists | Payments | x402-cloudflare-starter |
| Public-goods / grants tooling lists | Funding | OpenGOS, NeedRail |

## 4. Package indexes

| Index | Targets |
|-------|--------|
| **PyPI** | opengos, needrail, server-os, yodmcp, lrsi, openmesha, superagenticmcp |
| **npm** | only if the package in `server.json` is yours |

Publish the package **before** tagging if `server.json` lists that package version. The official registry validates package existence.

## 5. GitHub-native signals

- Pin 4–6 flagship repos
- Topics: `mcp`, `mcp-server`, `model-context-protocol`
- Cross-link flagships in every README

## 6. Order of operations

1. `server.json` + `publish-mcp.yml` green ✅
2. Tag `v*` so OIDC publish runs
3. Confirm official registry API
4. Claim Glama if the listing is unverified
5. Awesome-list PRs only after Glama/official exist

## 7. What this process does *not* do

- List you on Smithery / mcp.so / awesome-lists automatically
- Host binaries (registry is metadata only)
- Paid ads or guaranteed featured placement
