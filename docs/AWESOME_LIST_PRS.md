# Awesome-list PR drafts

## Status (punkpeye/awesome-mcp-servers)

| Step | Status |
|------|--------|
| Fork `ANAMIZED/awesome-mcp-servers` | ✅ Created |
| Branch `add-anamized-mcp-servers` | ✅ Created from main |
| README edit + push | ⚠️ Blocked here — upstream README is ~1.3MB; GitHub MCP cannot push full-file updates of that size |
| Open PR | Do after local edit (below) |

### Finish the PR locally (2 minutes)

```bash
git clone https://github.com/ANAMIZED/awesome-mcp-servers.git
cd awesome-mcp-servers
git checkout add-anamized-mcp-servers
# Merge latest upstream if needed:
# git remote add upstream https://github.com/punkpeye/awesome-mcp-servers.git && git fetch upstream && git merge upstream/main
```

Add these lines **alphabetically** within each section of `README.md`:

**Finance & Fintech** (`### 💰` … Finance & Fintech):

```markdown
- [ANAMIZED/needrail](https://github.com/ANAMIZED/needrail) 🐍 🏠 ☁️ - Agent-native Needs registry for public goods (MCP + x402). Discover, fund, claim, complete with mandatory provenance.
- [ANAMIZED/OpenGOS](https://github.com/ANAMIZED/OpenGOS) 🐍 🏠 ☁️ - Autonomous agentic MCP server for grants discovery, ranking, drafting, and public-goods funding (open-source first, full provenance). `pip install opengos`
```

**Coding Agents** (`### 🤖` … Coding Agents):

```markdown
- [ANAMIZED/LRSI](https://github.com/ANAMIZED/LRSI) 🐍 🏠 - Local Recursive Self-Improvement agentic OS with fail-closed governance kernel, event-sourced audit, and MCP tools.
- [ANAMIZED/server-os](https://github.com/ANAMIZED/server-os) 🐍 🏠 - Fail-closed autonomous agentic OS: agents as processes with cost control, governance, observability, MCP, SDK, CLI, and skills. `bash scripts/verify.sh`
```

**Other Tools and Integrations**:

```markdown
- [ANAMIZED/x402-cloudflare-starter](https://github.com/ANAMIZED/x402-cloudflare-starter) 📇 ☁️ - Minimal USDC micropayments on Base + Solana via x402. Bring your own wallets. Cloudflare Workers. No Coinbase required.
```

```bash
git add README.md
git commit -m "Add ANAMIZED MCP servers: OpenGOS, NeedRail, server-os, LRSI, x402"
git push -u origin add-anamized-mcp-servers
```

Open PR:

- **Base:** `punkpeye/awesome-mcp-servers` `main`
- **Head:** `ANAMIZED:add-anamized-mcp-servers`
- **Title:** `Add ANAMIZED MCP servers (OpenGOS, NeedRail, server-os, LRSI, x402) 🤖🤖🤖`
  - Trailing `🤖🤖🤖` opts into their agent fast-track merge path per CONTRIBUTING.md

**PR body:**

```markdown
Adds five ANAMIZED MCP / agent-runtime projects:

| Repo | Section |
|------|--------|
| OpenGOS | Finance & Fintech |
| needrail | Finance & Fintech |
| server-os | Coding Agents |
| LRSI | Coding Agents |
| x402-cloudflare-starter | Other Tools |

Each includes AGENTS.md and (where applicable) server.json / glama.json for registry discovery.
```

Or use GitHub UI:  
https://github.com/punkpeye/awesome-mcp-servers/compare/main...ANAMIZED:add-anamized-mcp-servers

---

## Other lists (same blurbs)

- [DhanushNehru/awesome-mcp-servers](https://github.com/DhanushNehru/awesome-mcp-servers)
- [Sagargupta16/awesome-mcp-servers](https://github.com/Sagargupta16/awesome-mcp-servers)

Follow each repo’s CONTRIBUTING table/bullet format.
