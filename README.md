# Qobine

An unofficial Qobuz client for GNOME, built with Rust, GTK4 and libadwaita.

This repository is an independent hard fork of [Qobine](https://github.com/SofusA/qobine), focused exclusively on a GNOME desktop experience. The name and application identity are provisional until the first public release of the fork.

**The transition is still in progress.** The upstream TUI, Web, RFID, GPIO and macOS-specific modules have been removed. Qobuz Connect remains available as an optional renderer, while the name and application identity remain provisional. The GNOME application is `gtk-module`, and its binary is `qobine-gtk`.

Qobine requires a paid Qobuz subscription. It does not provide free access to Qobuz and is not affiliated with or endorsed by Qobuz.

## Current GNOME baseline

The current upstream-derived application provides:

- Discover, library and playlist pages;
- Search for albums, artists and playlists;
- Album, artist and playlist details;
- Playback, pause, resume, previous/next track and seek;
- A persistent, reorderable playback queue;
- Favorites and playlist management.

The baseline also has known limitations, including no track search in the GTK interface, incomplete error and empty states, temporarily unresponsive favorites/playlist operations, and a non-functional MPRIS integration. These are existing issues to address in later milestones, not claims of completed redesign work.

## Build and run from source

Building from source is currently the supported way to run this fork. The upstream Flathub package installs the original Qobine, not this fork.

Linux with GNOME is the reference environment. On Fedora 44, the baseline was validated with Rust/Cargo 1.99.1 and the following packages:

```bash
sudo dnf install rust cargo rustfmt clippy gtk4-devel libadwaita-devel webkitgtk6.0-devel alsa-lib-devel just
```

Build the workspace and run the GNOME application:

```bash
cargo build
cargo run -p gtk-module
```

No Web frontend, Node.js or SQLx CLI setup is required for this GTK build. The application creates and migrates its local SQLite database at runtime.

## Checks

The baseline commands are:

```bash
cargo test --workspace --exclude qobuz-client --exclude gtk-module
cargo test -p qobuz-client --lib
cargo test -p gtk-module
cargo fmt --check
cargo clippy --workspace --exclude gtk-module -- -D warnings
cargo clippy -p gtk-module -- -D warnings
```

The `qobuz-client` integration tests use real local Qobuz credentials and make network requests. They are excluded from routine checks and must not be run without an intentionally configured account.

## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md) for the development workflow, scope and verification expectations. Participation follows the [Code of Conduct](CODE_OF_CONDUCT.md).

Project records and policies are available in the [changelog](CHANGELOG.md), [privacy notice](PRIVACY.md), [security policy](SECURITY.md) and [attribution notices](NOTICE).

Report issues with this fork in [this repository's issue tracker](https://github.com/eldermartins/qobine/issues), not in the upstream Qobine tracker. Please do not include Qobuz credentials, tokens, cookies or other secrets in reports.

## Upstream and credits

This fork preserves the history and notices of [Qobine](https://github.com/SofusA/qobine), originally developed by Sofus Addington and its contributors. Qobine itself started as a fork of [hifi.rs](https://github.com/iamdb/hifi.rs) and has since diverged.

## License

This project is licensed under [GPL-3.0-or-later](LICENSE). Modified versions remain subject to the same license and must preserve the applicable notices.
