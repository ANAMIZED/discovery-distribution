# One-shot operator checklist: `mcp-publisher` per repo

Publish ANAMIZED MCP servers to the **official MCP Registry**.
Requires your GitHub login (OIDC/OAuth). Run on a machine with network + your credentials.

## Prerequisites (once)

```bash
# macOS
brew install mcp-publisher

# or Linux (example — use latest release asset from modelcontextprotocol/registry)
# curl -L "https://github.com/modelcontextprotocol/registry/releases/latest/download/mcp-publisher_linux_amd64.tar.gz" | tar xz
# sudo mv mcp-publisher /usr/local/bin/

mcp-publisher --help
mcp-publisher login github   # browser / device flow — once per machine
```

Confirm each target repo has root `server.json` (already added):

| Repo | `server.json` name |
|------|---------------------|
| [OpenGOS](https://github.com/ANAMIZED/OpenGOS) | `io.github.ANAMIZED/opengos` |
| [needrail](https://github.com/ANAMIZED/needrail) | `io.github.ANAMIZED/needrail` |
| [server-os](https://github.com/ANAMIZED/server-os) | `io.github.ANAMIZED/server-os` |
| [openmesha](https://github.com/ANAMIZED/openmesha) | `io.github.ANAMIZED/openmesha` |
| [LRSI](https://github.com/ANAMIZED/LRSI) | `io.github.ANAMIZED/lrsi` |
| [x402-cloudflare-starter](https://github.com/ANAMIZED/x402-cloudflare-starter) | `io.github.ANAMIZED/x402-cloudflare-starter` |

Optional: `glama.json` is present for Glama indexing (submit repo URL at glama.ai if not auto-indexed).

## Publish sequence (copy-paste)

Run in order (highest discovery value first):

```bash
# 1. OpenGOS
cd /path/to/OpenGOS
mcp-publisher publish
# Expect: Successfully published … io.github.ANAMIZED/opengos

# 2. NeedRail
cd /path/to/needrail
mcp-publisher publish

# 3. server-os
cd /path/to/server-os
mcp-publisher publish

# 4. LRSI
cd /path/to/LRSI
mcp-publisher publish

# 5. openmesha
cd /path/to/openmesha
mcp-publisher publish

# 6. x402-cloudflare-starter
cd /path/to/x402-cloudflare-starter
mcp-publisher publish
```

## Verify

```bash
# Search registry (adjust query)
curl -s "https://registry.modelcontextprotocol.io/v0/servers?search=ANAMIZED" | head
```

Or open the registry UI and search `opengos` / `needrail` / `ANAMIZED`.

## Update a version later

1. Bump `version` in `server.json` (and package version if published to PyPI/npm).
2. `mcp-publisher publish` again from that repo root.
3. Prior versions remain immutable on the registry.

## Common failures

| Symptom | Fix |
|---------|-----|
| Auth error | `mcp-publisher login github` again |
| Namespace not allowed | Name must be `io.github.ANAMIZED/...` matching GitHub owner |
| Description too long | Keep description under registry limits (~100 chars preferred) |
| Package not installable | Ensure PyPI/npm identifier in `packages[]` is real or omit until published |

## After registry publish

1. Glama: confirm listing at https://glama.ai (submit if missing).
2. mcp.so: web form submit with GitHub URL.
3. Awesome-list PR (see `docs/AWESOME_LIST_PRS.md`) — fork `punkpeye/awesome-mcp-servers` already under ANAMIZED; branch `add-anamized-mcp-servers` created; README is ~1.3MB so apply entries from `docs/AWESOME_LIST_PRS.md` then open PR with title ending in `🤖🤖🤖` for agent fast-track.
