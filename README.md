# ChocoPackages

Chocolatey packages for Chrome extensions — maintained by [painteau](https://community.chocolatey.org/profiles/painteau).

## Packages

| Package | Description | Chocolatey |
|---------|-------------|------------|
| [twitch-channel-points-aut-chrome](./twitch-channel-points-aut-chrome) | Auto-clicks the Twitch channel points bonus button | [![Chocolatey](https://img.shields.io/chocolatey/v/twitch-channel-points-aut-chrome)](https://community.chocolatey.org/packages/twitch-channel-points-aut-chrome) |
| [video-ad-block-for-twitch-chrome](./video-ad-block-for-twitch-chrome) | Blocks video ads on Twitch | [![Chocolatey](https://img.shields.io/chocolatey/v/video-ad-block-for-twitch-chrome)](https://community.chocolatey.org/packages/video-ad-block-for-twitch-chrome) |
| [sponsorblock-for-youtube-chrome](./sponsorblock-for-youtube-chrome) | Skips sponsored segments on YouTube | [![Chocolatey](https://img.shields.io/chocolatey/v/sponsorblock-for-youtube-chrome)](https://community.chocolatey.org/packages/sponsorblock-for-youtube-chrome) |

## Install

```powershell
choco install twitch-channel-points-aut-chrome
choco install video-ad-block-for-twitch-chrome
choco install sponsorblock-for-youtube-chrome
```

## How it works

Each package deploys a Chrome extension by writing the extension ID and update URL into the Windows registry (`HKLM:\SOFTWARE\...\Google\Chrome\Extensions\`). Chrome picks it up automatically on next launch — no manual install needed.

## Build & publish

```powershell
cd <package-folder>
choco pack
choco push <package>.nupkg --source https://push.chocolatey.org
```
