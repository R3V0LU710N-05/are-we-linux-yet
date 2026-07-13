
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