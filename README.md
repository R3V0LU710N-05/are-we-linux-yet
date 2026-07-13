
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

<details><summary><strong>🖥️ General Desktop Usage<strong></summary>

<details open><summary><strong> Readiness Table </summary></strong>

| Use Case | Readiness | Notes |
| :-------: | :---------: | :-----: |
| 📢 OS Ads | Not a thing | |
| 🧑‍💻 Terminal | Incomparably better | Zsh, Bash, |
| 🪟 Window Management | Better than Windows | |
| 📁 File Management | Better than Windows | |
| 📼 Video/Audio Playing | Comparable | |
| 🌐 Web Browsing | Comparable | |
| MIME Types | Supported | |
| 📲 Touch/Gestures | Supported | Better on Wayland than X11 |

</details>

</details>

---


<details><summary><strong>🎨 Graphics, Audio & Hardware</strong></summary>

<details open><summary><strong>Readiness Table</strong></summary>

| Use Case | Readiness | Notes |
| :-------: | :---------: | :-----: |
| 🔪 No Screen Tearing | Default (Wayland) | Supported (X.Org) |
| 🔄 Variable Refresh Rate | Supported | |
| 🔃 Mixed Refresh Rate | Supported (Wayland) | Eventually (XLibre) |
| 🖥️ Fractional Scaling | Supported (Wayland) | Bad (X11) |
| 🎨 Color Management | Supported | Rolling out across Wayland |
| 🌈 HDR | Supported (Wayland) | Eventually (XLibre) |
| 🔐 Lock Screen | Secure (Wayland) | Hack (X11) |

</details>

<details><summary><strong>NVIDIA Drivers & The Nova Driver</strong></summary>

* **[NVIDIA](https://www.nvidia.com/) Stack:**
  * **Proprietary**
  Traditionally the standard for high performance. Requires specific configuration to work well with newer display standards like [Wayland](https://wayland.freedesktop.org/).

  * **[NVK](https://gitlab.freedesktop.org/mesa/mesa/-/tree/main/src/nouveau/vulkan):** The open-source Vulkan driver integrated into [Mesa](https://mesa3d.org/). It is now conformant and effectively replaces legacy drivers.
  * **[Nova Driver](https://rust-for-linux.com/nova-gpu-driver):** An emerging, Rust-based, GSP-only GPU driver. Designed as the successor to the legacy [Nouveau](https://nouveau.freedesktop.org/) driver, utilizing [Rust's](https://www.rust-lang.org/) memory safety to improve maintainability for modern NVIDIA (Turing*) hardware.

</details>

<details><summary><strong>Audio</strong></summary>

* **[ALSA (Advanced Linux Sound Architecture)](https://www.alsa-project.org/wiki/Main_Page)** is the supporting framework provided by the Linux kernel.
* [PipeWire](https://pipewire.org/) is the modern standard, replacing [PulseAudio](http://www.freedesktop.org/wiki/Software/PulseAudio
) and JackAudio.
</details>

</details>

---

<details><summary><strong>🎮Gaming</strong></summary>

<details open><summary><strong>Readiness Table</strong></summary>

| Use Case | Readiness | Notes |
| :-------: | :---------: | :-----: |
| Steam (Single player) | Comparable | Try [Proton-GE](https://github.com/GloriousEggroll/proton-ge-custom/releases)  |
| Retrogaming/Emulation | Comparable | |
| Game Controllers | Supported | |
| Non-Steam (Single Player) | Works well, but fiddily | |
| Multiplayer | Gatekept | Kernel-level anti-cheat is a hard no |

</details>

<details><summary><strong>WINE</strong></summary>

**[WINE](https://www.winehq.org/) (Wine Is Not an Emulator):** is a translation layer.
  + **API Translation:** Instead of simulating a full Windows operating system or virtualizing hardware like a traditional emulator, Wine translates Windows API (Win32/Win64) calls into native [POSIX](https://en.wikipedia.org/wiki/POSIX) (Linux/Unix) system calls on the fly.
  + **The Emulation Overhead:** Traditional emulators simulate an entirely different hardware architecture (requiring heavy CPU instruction translation). Wine bypasses this completely because both the host and guest software share the same target CPU architecture (x86_64), yielding minimal processing overhead.
  + **Near-Native Performance:** Because applications execute instructions directly on the host CPU, software runs at near-native performance—and occasionally even faster than on Windows, depending on how efficiently the Linux kernel handles the translated system calls.
  + **[Valve's Proton](https://github.com/ValveSoftware/Proton) Ecosystem:** Proton is a specialized fork of Wine heavily optimized for [Steam](https://store.steampowered.com/). It seamlessly bundles critical graphics translation layers:
    + **[DXVK](https://github.com/doitsujin/dxvk):** Translates DirectX 9, 10, and 11 API calls into native [Vulkan](https://www.vulkan.org/) calls.
    + **[VKD3D-Proton](https://github.com/HansKristian-Work/vkd3d-proton):** A heavily optimized, gaming-centric fork of [Wine's vkd3d](https://gitlab.winehq.org/wine/vkd3d) that translates DirectX 12 calls to Vulkan, which is absolutely vital for running modern AAA titles on Linux.
</details>

</details>

---

<details><summary><strong>💿 Choosing Your First Distro</strong></summary>

<details><summary><strong>1. Choose Your Desktop Environment</strong></summary>

> **The Desktop Environment ***(DE)***** is the most critical decision for a new user, as it dictates your entire daily workflow and visual experience.

<details><summary><strong>Wayland Supported (Recommended)</strong></summary>

* These environments provide the most modern feature sets, including native fractional scaling, better security, improved multi-monitor handling, and smoother gestures.

  * **[GNOME](https://www.gnome.org/):** A keyboard-centric, streamlined, and polished experience. Full Wayland maturity.
 
    > [!WARNING]
    > GNOME uses Client-Side Decorations (CSD) only. \
    > If your app doesn't support CSD, it will lack a title bar.
    > [![Server Side Decorations Are Non Negotiable](https://img.youtube.com/vi/Kr6JNyXlu9E/maxresdefault.jpg)](www.youtube.com//embed/Kr6JNyXlu9E)

  * **[KDE Plasma](https://kde.org/):** 
  Highly customizable with a traditional taskbar-and-menu layout. Full Wayland maturity.
  * **[Cosmic](https://system76.com/cosmic):** A modern, performant DE built in Rust, designed for the future of the Linux desktop.
  * **[Cinnamon](https://cinnamon-spices.linuxmint.com/):** A familiar, Windows-like workflow with maturing Wayland support.

</details>

<details><summary><strong>Limited / Work-in-Progress Wayland Support</strong></summary>

  * **[XFCE](https://xfce.org/):** A lightweight, classic DE. Support for Wayland is actively in development (targeting 4.20* releases via `labwc`).

</details>

<details><summary><strong>X11-Only (Legacy/Niche)</strong></summary>
  
   > [!WARNING] 
   > These environments rely on the aging X11 display protocol. While functional, they often lack support for modern display features like high-fidelity VRR, seamless multi-monitor refresh rates, and secure input isolation. They are increasingly being treated as maintenance-only projects.
  * **[MATE](https://mate-desktop.org/):** A traditional fork of GNOME 2.
  * **[LXQt](https://lxqt-project.org/):** Extremely lightweight, primarily focused on X11 stability.
  * **Window Managers:** (e.g., [i3](https://i3wm.org/), [AwesomeWM](https://awesomewm.org/)) These offer a minimalist, tiling workflow but do not natively support Wayland. (Alternative: [Sway](https://swaywm.org/) is the Wayland-native equivalent of i3).
</details>

</details>

<details><summary><strong>2. The Guide</strong></summary>


* **I have old hardware:** Linux Mint Cinnamon (Stable, easy).
* **I have the latest hardware:** EndeavourOS (Rolling, up-to-date).
* **I'm using Apple Silicon:** Asahi (The only real choice).

</details>

<details><summary><strong>What's a distro, actually?</strong></summary>
  
* Might sound obvious, but this is one of the most underasked questions out there.
* Linux is just one of many disjointed, independently developed programs.
* The job of a distro is to package them so they actually work.

</details>

<details><summary><strong>What makes distros unique?</strong></summary>

* **Update Cycles:**
  * **Debian/Point Releases:** Stable, 6 month feature updates and regular security updates.
  * **Arch/Rolling:** Cutting edge, feature updates are available immediately.
* **Traditional:** You can modify everything. \
    Great for tinkering, but full of "footguns." (Debian, Arch, Mint).
* **Atomic/Immutable:** Modifying system-level files, packages, and settings are restricted and requires extra steps. (Vanilla OS, Fedora Atomic).
* **Reproducible:** Maintained via config files. (NixOS, GNU Guix).
* **Systemd:**
* The vast majority of distribution ship systemd.
* People who dislike systemd *really* hate it—to the point that there are plenty of distros that are just "X distro, but without systemd."

</details>

</details>

---


<details><summary><strong>Creative Suites</strong></summary>

<details open><summary><strong>Readiness Table</strong></summary>

| Category | Status | Additional Info | 
| :---: | :---: | :---: |
| 🖼️ Painting | Comparable | Krita is the standard |
| 🧊 3D | Comparable | Blender is native |

</details>

</details>

---

<details><summary><strong>🤝 How to Contribute</strong></summary>

* Open an Issue Page. 
* Refine Documentation: Help update and improve this page. 
  * Edit `_incudes/<fragment>.md`
    * Structure matters.
    * Common decency is expected.
    * Keep it technical and rant-free.
    * Use In-line Links when referencing a tool, project, package, framework, ect.
  * Open a PullRequest.
> [!TODO] 
> * Buy me a Coffee : `<See Sponsor>`

</details>



#### License

This project is licensed under the Creative Commons Attribution-ShareAlike 4.0 International License - see the [LICENSE](/LICENSE) file for details.

© 2026 by R3V0LU710N-05