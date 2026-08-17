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

**Status (2026-08-17):**

| Repo | AGENTS.md | server.json | glama.json |
|------|-----------|-------------|------------|
| OpenGOS | ✅ | ✅ | ✅ |
| needrail | ✅ | ✅ | ✅ |
| server-os | ✅ | ✅ | ✅ |
| openmesha | ✅ | ✅ | ✅ |
| LRSI | ✅ | ✅ | ✅ |
| x402-cloudflare-starter | ✅ | ✅ | ✅ |
| agenticarb | ✅ | — (not MCP-primary) | — |
| edge-os | ✅ | optional | optional |
| rui | ✅ | optional | optional |
| discovery-distribution | ✅ | n/a | n/a |

## 2. MCP / agent registries (submit these)

| Registry | How | Priority targets |
|----------|-----|------------------|
| **Official MCP Registry** | `mcp-publisher login github` → `mcp-publisher publish` (needs `server.json`) | OpenGOS, needrail, server-os, openmesha, LRSI, x402-cloudflare-starter |
| **Glama** | Submit GitHub repo at [glama.ai](https://glama.ai) (indexes `glama.json`) | Same MCP set |
| **mcp.so** | Web form + GitHub login | OpenGOS, needrail, x402-cloudflare-starter |
| **Smithery** | Publisher account (HTTP MCP preferred) | When hosted HTTP endpoints exist |

### Official registry publish (operator steps)

```bash
# Install publisher (example)
brew install mcp-publisher   # or download from modelcontextprotocol/registry releases

cd /path/to/OpenGOS   # or needrail, server-os, ...
mcp-publisher login github
mcp-publisher publish
```

Namespace used: `io.github.ANAMIZED/<name>`.

## 3. Awesome-lists (PR targets)

| List | Category suggestion | Primary repos |
|------|---------------------|---------------|
| [punkpeye/awesome-mcp-servers](https://github.com/punkpeye/awesome-mcp-servers) | Finance / Public goods / Agents | OpenGOS, needrail |
| [DhanushNehru/awesome-mcp-servers](https://github.com/DhanushNehru/awesome-mcp-servers) | Development & DevOps / AI Agents | server-os, LRSI, openmesha |
| [Sagargupta16/awesome-mcp-servers](https://github.com/Sagargupta16/awesome-mcp-servers) | By category | OpenGOS, x402 |
| x402 / crypto payment lists | Payments | x402-cloudflare-starter |
| Public-goods / grants tooling lists | Funding | OpenGOS, needrail |

### Suggested one-line blurbs for PRs

- **OpenGOS** — MCP server for grants + public-goods funding discovery, ranking, and grounded proposal outlines (open-source bias).
- **NeedRail** — Agent-native Needs registry (MCP + x402) for public-goods coordination with mandatory provenance.
- **server-os** — Fail-closed agentic OS: agents as processes with cost, governance, MCP, SDK, CLI.
- **x402-cloudflare-starter** — Minimal USDC micropayments on Base + Solana via x402; BYO wallets; Cloudflare Workers.

## 4. Package indexes

| Index | Targets |
|-------|--------|
| **PyPI** | `opengos` (live/planned), needrail, server-os, lrsi, openmesha when versioned |
| **npm** | x402-cloudflare-starter (optional package publish) |

## 5. GitHub-native signals

Manual (Dashboard / UI — API limited):

- Pin 4–6 flagship repos on profile
- Topics per repo: `mcp`, `agentic-os`, `x402`, `public-goods`, `grants`, `fail-closed`, etc.
- “Available for hire” on profile
- Cross-link flagships in every README (already started)

## 6. Order of operations (recommended)

1. Keep AGENTS.md + server.json + glama.json green on MCP repos ✅
2. Publish OpenGOS + needrail to official MCP Registry + Glama (highest signal)
3. Open 2–3 awesome-list PRs with the blurbs above
4. PyPI release for OpenGOS if not already published
5. Repeat for server-os / LRSI / openmesha / x402

## 7. What this process does *not* do

- Paid ads
- Guaranteed featured placement
- Star farming or engagement manipulation

Organic only: correct metadata → registries → agents → humans.
