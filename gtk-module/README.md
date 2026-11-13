# Qobine for GNOME

An unofficial Qobuz client built with GTK4 and libadwaita.

This is the GNOME application within an independent hard fork of [Qobine](https://github.com/SofusA/qobine). The upstream TUI, Web, RFID and GPIO modules have been removed; Connect/Disconnect support remains provisional. The name and application identity remain provisional.

A paid Qobuz subscription is required. The application is not affiliated with or endorsed by Qobuz.

## Current capabilities

The validated baseline includes:

- Discover and library browsing;
- Album, artist and playlist search;
- Album, artist and playlist pages;
- Streaming, pause/resume, previous/next track and seek;
- A persistent, reorderable queue;
- Favorites and playlist management.

The current interface still has known navigation, responsiveness, asynchronous-state and MPRIS limitations. See the root [README](../README.md) for the project status.

## Run from source

There is currently no separate Flatpak package for this fork. The upstream Flathub entry installs the original Qobine, not this version.

From the repository root, after installing the dependencies listed in the root README:

```bash
cargo run -p gtk-module
```

On the first launch, a WebKitGTK window opens for Qobuz authentication. Never include credentials, tokens or cookies in screenshots, logs or issue reports.

## Development

Run the checks documented in the root [README](../README.md) and follow [CONTRIBUTING.md](../CONTRIBUTING.md). Changes should remain incremental and should not rewrite API, authentication or playback without demonstrated need.

Report problems with this fork at [github.com/eldermartins/qobine/issues](https://github.com/eldermartins/qobine/issues), not in the upstream tracker.

## License

GPL-3.0-or-later. See the repository's [LICENSE](../LICENSE).
