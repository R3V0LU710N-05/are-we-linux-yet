
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