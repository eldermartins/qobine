# Privacy Notice

Last updated: 2026-11-12

This notice describes the current behavior of the GNOME-focused Qobine fork based on the baseline source review. It may change as the application evolves.

## Qobuz account and network access

Qobine requires a Qobuz account and paid subscription. Authentication opens Qobuz OAuth in WebKitGTK. The application receives an authorization code, exchanges it with Qobuz and stores the resulting user ID and authentication token locally.

Using the application sends requests to Qobuz for authentication, catalog data, search, favorites, playlists, artwork, streaming URLs and audio. Qobuz's own terms and privacy practices apply to that processing.

## Local data

The application uses a local SQLite database for credentials, configuration, queue persistence and cache-related records. Credentials are stored in that database; the application does not add a separate encryption layer for them.

Audio may be cached locally. Artwork and other remote resources are fetched as needed. The current GTK implementation does not provide a clearly defined persistent artwork-cache guarantee.

Protect your user account and local files with the operating system's normal account and filesystem protections. Do not share the database, authentication tokens, cookies or unredacted diagnostic logs.

## Optional Qobuz Connect

The inherited code includes optional Qobuz Connect functionality. When enabled, it may discover or communicate with playback devices on your network. Do not enable this feature on untrusted networks without understanding that behavior.

## Telemetry and fork infrastructure

No application analytics, advertising tracker or telemetry upload operated by this fork was identified in the reviewed source. The application does not intentionally send your Qobuz credentials to the fork maintainer.

Source hosting, issue reports, GitHub private reports and any future package hosting are subject to the privacy practices of those services. Information you voluntarily post publicly may be visible to others.

## Logout and deletion

The current logout action removes the locally stored Qobuz credentials and closes the application. It does not clear all cached content and should not be assumed to revoke every server-side Qobuz session.

There is currently no comprehensive in-application control for deleting every local database and cache artifact. Removing application data through the operating system may be necessary for complete local deletion.

## Reporting privacy concerns

Use the fork's issue tracker for non-sensitive questions. For a vulnerability or a concern involving exposed personal data, follow [SECURITY.md](SECURITY.md) and do not publish the sensitive data.
