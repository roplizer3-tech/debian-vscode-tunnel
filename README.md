# Debian Linux Cloud Environment with VS Code Server Tunnel

A full Debian 12 (Bookworm) container environment configured for cloud development with:
- **Web Terminal**: Instant browser-based terminal powered by `ttyd` on port 8080.
- **VS Code Tunnel**: Official Microsoft `code` CLI enabling full development via `https://vscode.dev`.
- **systemd Compatibility**: Full `systemctl` support using `docker-systemctl-replacement`.
- **Persistence**: Workspaces in `/workspace`, persistent data in `/data` (mounted persistent volumes).

## Quick Start

### 1. Access the Web Terminal
Navigate to your app URL in the browser.
- Default User: `admin`
- Default Password: `Antigravity2026!`

### 2. Connect via VS Code (Browser)
In the terminal, run:
```bash
code-tunnel-start
```
(Or with custom name: `code tunnel --accept-server-license-terms --name cranl-debian`)

Follow the on-screen prompt to open `https://github.com/login/device` and enter your one-time device code.
Once authenticated, open:
```
https://vscode.dev/tunnel/cranl-debian
```

### 3. Managing Services with systemctl
```bash
systemctl start code-tunnel
systemctl status code-tunnel
```
