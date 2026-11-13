# Contributing to Qobine

Thank you for contributing to this GNOME-focused Qobine fork. Keep changes small, verifiable and consistent with the project's current milestone.

## Scope and approach

- Target Linux and GNOME, using Rust, GTK4 and libadwaita.
- Preserve working API, authentication, cache and playback behavior unless evidence shows that a change is needed.
- Keep business logic, API and playback independent of GTK widgets.
- Remove unrelated frontends and integrations only in the order established by the current reduction plan.
- Prefer GNOME patterns over custom visual workarounds, fixed sizes or compensating margins.
- Give asynchronous screens explicit loading, error, empty and content states.
- Do not block the UI thread with network, database or other blocking work.
- Preserve keyboard navigation, focus and accessibility.
- Apply upstream fixes selectively through cherry-picks or manual adaptations, not indiscriminate merges.

During the baseline milestone, do not remove modules or redesign screens. Keep documentation, build fixes and functional changes in separate commits.

## Development setup

Linux with GNOME is the reference environment. On Fedora 44, install the validated dependencies:

```bash
sudo dnf install rust cargo rustfmt clippy gtk4-devel libadwaita-devel webkitgtk6.0-devel alsa-lib-devel just
```

The baseline used Rust/Cargo 1.99.1. The workspace uses Rust edition 2024 and currently does not pin a toolchain file.

Node.js, npm and the SQLx CLI are only needed by the legacy Web/development workflows, not for building and running the GTK application.

## Build and run

From the repository root:

```bash
cargo build
cargo run -p gtk-module
```

The application creates and migrates its local SQLite database at runtime. Do not commit local databases, environment files, credentials or captured authentication data.

## Required checks

Run the applicable baseline checks before submitting a change:

```bash
cargo test --workspace --exclude qobuz-client --exclude gtk-module
cargo test -p qobuz-client --lib
cargo test -p gtk-module
cargo fmt --check
cargo clippy --workspace --features gpio --exclude gtk-module -- -D warnings
cargo clippy -p gtk-module -- -D warnings
```

Update these commands when the reduction plan removes the GPIO feature.

The integration tests in `qobuz-client/tests/integration_test.rs` use real credentials from the local database and call the Qobuz API. Do not run them routinely or without an intentionally configured account. Never paste their credentials or sensitive responses into an issue or pull request.

For user-interface changes, also test the affected flow manually at wide, medium and narrow window sizes. Include before/after screenshots when useful, but exclude personal data, notifications and secrets.

## Commits and pull requests

- Keep each commit focused on one kind of change.
- Separate documentation, build fixes, refactoring and functional changes.
- Explain the motivation and any baseline behavior affected by the change.
- List the commands and manual checks actually performed; do not claim untested behavior.
- Distinguish pre-existing defects from regressions.
- Include screenshots for visual changes and note keyboard/accessibility checks when relevant.

By contributing, you agree that your contributions are provided under GPL-3.0-or-later. Preserve existing copyright, attribution and license notices.

## Community and reporting

Participation is governed by [CODE_OF_CONDUCT.md](CODE_OF_CONDUCT.md). For security-sensitive reports, follow [SECURITY.md](SECURITY.md) instead of posting sensitive details publicly.

Use the [fork's issue tracker](https://github.com/eldermartins/qobine/issues) for bugs and feature requests specific to this fork. Do not redirect fork-specific problems to upstream Qobine.
