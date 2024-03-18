# Electron Installer: Snap Universal

Builds Snap files for Electron applications that have already been bundled and customized with the addition of universal architecture.

When snapcraft.yaml specifies multiple architectures, a universal application is created containing the tag in the file name of -multi- to represent multiple architecture build in a single snap package. Similar for MacOS pkg which is a universal package for both x64 and arm64 applications and Windows APPX for holding multiple windows architectures.

## Requirements

Requires Node 10 or greater, and [`snapcraft`](https://snapcraft.io).

## Quick Start

The easiest way is to use [Electron Forge](https://electronforge.io) and enable the `snap` maker.

To use this as a standalone CLI, install `@pingleware/electron-installer-snap` to your project:

```shell
npm install --save-dev @pingleware/electron-installer-snap
# or
yarn add --dev @pingleware/electron-installer-snap
```

Then add to your `package.json`:

```javascript
{
  // ...
  "scripts": {
    "build:package": "electron-packager . --out=out"
    "build:snap": "electron-installer-snap --src=out/myappname-linux-x64"
  },
  // ...
}
```

Then you can run `npm run build:package && npm run build:snap`, which will prepare the Electron app
for bundling and generate a `.snap` file in your current directory.
It is recommended to ignore the generated `snap` directory in your version control.

## Options

Available command-line options are displayed when you run `electron-installer-snap --help`.

For the JavaScript API, please see the [API docs](https://electron-userland.github.io/electron-installer-snap/).

## Changes by PINGLEWARE

* add architecture option universal which returns amd64, arm64, armhf, i386

## Thanks

Thank you to Canonical for the support in getting this module created, during the September 2017
Ubuntu Rally and the January 2018 Snapcraft Summit.

## Legal

This project is copyrighted under the Apache License (version 2). See LICENSE for details.
