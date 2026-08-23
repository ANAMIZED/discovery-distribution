# MCP registry status — 2026-08-23

Organic registration of ANAMIZED MCP servers. No ads, no star farming.

## Official MCP Registry — LIVE (8)

Search: https://registry.modelcontextprotocol.io/v0.1/servers?search=ANAMIZED

| Name | Version | Status |
|------|---------|--------|
| `io.github.ANAMIZED/yodmcp` | 0.5.0 | active |
| `io.github.ANAMIZED/opengos` | 0.4.0 | active |
| `io.github.ANAMIZED/needrail` | 0.1.0 | active |
| `io.github.ANAMIZED/superagenticmcp` | 0.1.0 | active |
| `io.github.ANAMIZED/server-os` | 0.1.0 | active |
| `io.github.ANAMIZED/lrsi` | 0.1.0 | active |
| `io.github.ANAMIZED/openmesha` | 0.1.0 | active |
| `io.github.ANAMIZED/x402-cloudflare-starter` | 0.1.0 | active |

Each repo has:

- `server.json` (schema 2025-12-11, description ≤100 chars)
- `glama.json` with `$schema` + `maintainers: ["ANAMIZED"]`
- `.github/workflows/publish-mcp.yml` (GitHub OIDC → `mcp-publisher login github-oidc`)

`packages[]` omitted until PyPI/npm identifiers exist. Registry validates package registries and 404s unpublished names.

## Glama

| Server | Status |
|--------|--------|
| YodMCP, OpenGOS, NeedRail | Already listed (unclaimed) |
| Server-OS, OpenMesha, LRSI, SuperAgenticMCP, x402 | `glama.json` on GitHub; submit/claim needs Glama GitHub OAuth |

Submit UI: https://glama.ai/mcp/servers (Add Server, login required).

## Smithery

Blocked until a public HTTPS MCP URL exists. YodMCP supports `--http` locally; it is not hosted. No stub `smithery.yaml`.

## mcp.so

Issue bodies ready. GitHub App token cannot `createIssue` on `chatmcp/mcpso` (403 Resource not accessible by integration). Reconnect GitHub with public-repo issue write, then file `[Submit]` issues (one per server).

## Awesome-lists — branches pushed, upstream PRs 403

| List | Branch | Compare (open PR as ANAMIZED) |
|------|--------|-------------------------------|
| punkpeye/awesome-mcp-servers | `ANAMIZED:add-anamized-mcp-servers` | https://github.com/punkpeye/awesome-mcp-servers/compare/main...ANAMIZED:add-anamized-mcp-servers?expand=1 |
| DhanushNehru/awesome-mcp-servers | `ANAMIZED/awesome-mcp-servers-dhanushnehru:add-anamized-mcp-servers` | https://github.com/DhanushNehru/awesome-mcp-servers/compare/main...ANAMIZED:awesome-mcp-servers-dhanushnehru:add-anamized-mcp-servers?expand=1 |
| Sagargupta16/awesome-mcp-servers | `ANAMIZED/awesome-mcp-servers-sagargupta16:add-anamized-mcp-servers` | https://github.com/Sagargupta16/awesome-mcp-servers/compare/main...ANAMIZED:awesome-mcp-servers-sagargupta16:add-anamized-mcp-servers?expand=1 |

punkpeye PR title must end with `🤖🤖🤖`.

Same 403 on `createPullRequest` for third-party repos. Fork pushes succeeded.

## GitHub topics

`mcp`, `mcp-server`, `model-context-protocol` (plus domain tags) set on all eight repos.
