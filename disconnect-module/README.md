# Disconnect

Disconnect is a self-hostable shared playback feature. You can host the server yourself or use the public server at <https://qobine-disconnect.iot-lab.dk>. Please do not abuse the public server.

## How to use

Configure Disconnect in the GTK preferences by selecting Disconnect and providing:

- the server URL;
- the shared password;
- the device name.

For example, use `https://qobine-disconnect.iot-lab.dk` as the server URL, a shared password, and a device name such as `livingroom`.

Clients using the same server URL, password and device configuration can see and activate one another from the GTK playback-device selector.

## Why not Qobuz Connect?

The official Qobuz Connect protocol is undocumented and generally difficult to develop against. The code needed for Disconnect also supports Qobuz Connect's player control, activation and deactivation.

Qobuz Connect has the advantage of the official smartphone app. Disconnect remains available for users who prefer the self-hosted workflow.
