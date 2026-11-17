#!/bin/bash
cat << 'EOF'

 [1;34m╔══════════════════════════════════════════════════════════════════════╗ [0m
 [1;34m║ [0m   [1;32mDebian Linux Cloud Environment (Debian 12 Bookworm) [0m                 [1;34m║ [0m
 [1;34m╠══════════════════════════════════════════════════════════════════════╣ [0m
 [1;34m║ [0m   [1;33m* systemctl: [0m Enabled & ready (docker-systemctl-replacement)        [1;34m║ [0m
 [1;34m║ [0m   [1;33m* Web Terminal: [0m Running via ttyd                                   [1;34m║ [0m
 [1;34m║ [0m   [1;33m* Working Directory: [0m /workspace                                     [1;34m║ [0m
 [1;34m║ [0m   [1;33m* Persistent Data: [0m   /data                                          [1;34m║ [0m
 [1;34m╠══════════════════════════════════════════════════════════════════════╣ [0m
 [1;34m║ [0m   [1;36m[VS Code Server Tunnel] [0m                                             [1;34m║ [0m
 [1;34m║ [0m  To link this workspace to https://vscode.dev, run:                  [1;34m║ [0m
 [1;34m║ [0m       [1;37mcode-tunnel-start [0m                                               [1;34m║ [0m
 [1;34m║ [0m  or manage it as a systemd service:                                  [1;34m║ [0m
 [1;34m║ [0m       [1;37msystemctl start code-tunnel [0m                                     [1;34m║ [0m
 [1;34m║ [0m       [1;37msystemctl status code-tunnel [0m                                    [1;34m║ [0m
 [1;34m╚══════════════════════════════════════════════════════════════════════╝ [0m

EOF
