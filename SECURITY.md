# Security Policy

## Supported scope

There is no public fork release yet. Security fixes are considered for the current development branch and inherited code that affects the GNOME application, authentication, local data, playback or packaging.

Particularly sensitive areas include Qobuz OAuth, locally stored credentials, WebKitGTK, API responses, audio/cache files, optional Qobuz Connect configuration and Flatpak permissions.

## Report a vulnerability

Do **not** publish sensitive vulnerability details, credentials or exploit instructions in a public issue.

Prefer GitHub's private vulnerability reporting for this repository:

https://github.com/eldermartins/qobine/security/advisories/new

If private reporting is unavailable, contact the repository owner, Elder Martins, through the contact options published at https://github.com/eldermartins. A public issue may only be used to request a private contact channel, without describing the vulnerability.

Include, when possible:

- A description of the impact and affected component;
- The commit hash and operating environment;
- Reproduction steps or a minimal proof of concept;
- Suggested mitigations, if known.

Remove Qobuz tokens, passwords, cookies, authorization codes, personal data and sensitive URLs from logs and attachments. Do not include real credentials in a proof of concept.

## Disclosure and response

Reports are handled by the project maintainer as time and resources permit. No fixed response-time guarantee is currently offered. Please allow reasonable time for investigation and a fix before public disclosure. The maintainer may coordinate attribution and publication with the reporter.

Upstream-only issues should be reported to the original project when they do not affect this fork. If an issue affects both, mention that fact privately so disclosure can be coordinated without exposing either project.
