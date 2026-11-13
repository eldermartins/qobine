# Changelog

All notable fork-specific changes are documented in this file. The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/).

There has been no public release of this fork yet. Upstream release history remains in the Git history and inherited application metadata.

## [Unreleased]

### Added

- Initial GNOME-focused fork baseline covering build, tests, functional behavior, visual states and architecture.
- Fedora development setup and validated build, test, lint and execution commands.
- Contribution, security, privacy, attribution and community documentation.
- Issue and pull request templates for the fork.

### Changed

- Reworked the root and GTK READMEs to describe the GNOME-only direction and the ongoing reduction of the inherited workspace.

### Known baseline issues

- GTK search has no track category and does not clear previous results for an empty query.
- Network and API failures often lack visible error or recovery states.
- Favorites and playlist mutations can temporarily make the interface unresponsive and reload artwork.
- MPRIS does not appear in GNOME during playback.
- Logout closes the application; an abnormal SIGABRT was also observed on one application close.
