# WebMCP surface (optional, page-level)

WebMCP is **not** a registry listing. It is a browser API on a visited page.

Add it when a repo already has a human web control plane:

| Repo | Page |
|------|------|
| desk | `web/index.html` |
| SuperAgenticMCP | `web/board.html` |
| Server-OS | `web/server-os.html` |
| OpenGOS | `web/opengos-webmcp.html` |

Required together with MCP metadata — never instead of `server.json`.

Rules: same tool names as MCP, reads first, writes confirm, no silent payment.
