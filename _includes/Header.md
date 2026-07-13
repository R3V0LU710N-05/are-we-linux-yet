# 🐧 Are We Linux Yet? (GNU/Linux)

This project is meant to keep track of the viability of the (GNU/)Linux desktop for various use cases.

> A community-driven hub tracking the readiness, friction points, and compatibility of desktop Linux for everyday users, gamers, and professionals.

---

## 📊 The Readiness Matrix

| Category | Status | Primary Blockers | Additional Info |
| :---: | :--: | :---: | :---: |
| 🎮 Gaming | 🟡 Improving | DRM edge-cases; niche launchers. Kernel-level anti-cheat (e.g., Riot Vanguard) | [🧪ProtonDB](https://www.protondb.com) / [👾Are We Anti-Cheat Yet](https://areweanticheatyet.com) |
| 🏝️ [Wayland](https://wayland.freedesktop.org/) | 🟢 Ready! | ⚠️ Edge case areas are still problematic, Nvidia W.I.P.  | [We Are Wayland Now](https://wearewaylandnow.com/) |
| 🎨 Creative Suites | 🟠 Needs Improvement | Feature parity gaps | [AlternativesTo]((https://alternativeto.net/)) |
| 💼 Office & Productivity | 🟢 Ready! | Macro-heavy/locked-down corporate environments | [LibreOffice](https://www.libreoffice.org/) / [OnlyOffice](https://www.onlyoffice.com/) |
| ⚙️ Hardware & RGB | 🟡 Improving | Proprietary vendor software; limited open support | [🎨OpenRGB](https://openrgb.org) / [🪤Piper](https://github.com/libratbag/piper) |

For more refer to [AlternativeTo]()

> [!IMPORTANT]
>
> <details><summary>Linux isn’t Windows</summary>
>
> - The operating model is different: how software is installed, configured, secured, and managed.
>   - Package management
>     - ClI :
>       - Debian : `apt`
>       - Fedora : `dnf`
>       - Arch : `pacman`
>     - GUI :
>       - [KDE Discover](https://apps.kde.org/discover/)
>       - [Gnome Software](https://apps.gnome.org/Software/)
>       - [Synaptic](https://github.com/mvo5/synaptic)
>       - [Myrlyn](https://github.com/shundhammer/myrlyn)
>
>   - Command fundamentals (shell syntax, pipes, redirection) for typical dev/test/admin tasks.
>   - Service management and logging differ (often using the init system your distro ships with, plus Linux log locations/formatting).
>
>   - Collaboration expectations change:
>     - Many fixes and features come via community-maintained projects (issue trackers, reproducible bug reports, patches/PRs). If you run into a bug, report it!
>   - Your filesystem mental model will change:
>     - There’s no `C:\` drive. Linux uses a single rooted directory tree; paths start at `/` (UNIX-style).
>       - Common places:
>         - `/home` — user files
>         - `/etc` — system configuration
>         - `/var` — logs and variable runtime data
>         - `/tmp` — temporary files
>         - `/run` — runtime state (often cleared on reboot)
>         - `/usr` — installed programs and shared resources
>         - External drives/extra filesystems “attach” by being mounted onto a directory (commonly under `/mnt` or `/media`), not by drive letters.
>
>   - Permissions are core:
>     - Access control is based on UNIX file permissions (owner/group/others) and ownership.
>     - Privileged actions are typically done via `sudo` (or controlled root usage), not Windows-style security prompts.
>
> Resources:
>
> - Linux Filesystem Hierarchy Standard [FHS](https://refspecs.linuxfoundation.org/FHS_3.0/fhs/index.html)
> - Quick manual: [tldr pages](https://tldr.sh/)

</details>

---