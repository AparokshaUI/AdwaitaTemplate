<p align="center">
  <img width="256" alt="Adwaita Template Icon" src="data/icons/io.github.AparokshaUI.AdwaitaTemplate.svg">
  <h1 align="center">Adwaita Template</h1>
</p>

_Adwaita Template_ is a template application for the [Adwaita for Swift package](https://github.com/AparokshaUI/Adwaita/).

## Table of Contents

- [Installation](#Installation)
- [Usage](#Usage)
- [Thanks](#Thanks)

## Installation

Install the [GNOME Builder](https://flathub.org/apps/org.gnome.Builder) IDE.

For designing an app icon, [App Icon Preview](https://flathub.org/apps/org.gnome.design.AppIconPreview) and [Inkscape](https://flathub.org/apps/org.inkscape.Inkscape) are recommended.

> [!NOTE]
> You do not have to install any dependencies of Adwaita for Swift, including Swift, on your system.
> The Adwaita template runs in a [Flatpak](https://flatpak.org/).
> The GNOME Builder will automatically download dependencies from [Flathub](https://flathub.org).

## Usage

1. Open this project in the GNOME Builder. It will start downloading the dependencies.
2. Build and run the application using the "run" icon in the toolbar.
3. Change the app's name and other information about the application in the following files (and file names):
    - `README.md`
    - `Package.swift`
    - `io.github.AparokshaUI.AdwaitaTemplate.json`
    - `Sources/AdwaitaTemplate.swift`
    - `data/io.github.AparokshaUI.AdwaitaTemplate.metainfo.xml`
    - `data/io.github.AparokshaUI.AdwaitaTemplate.desktop`
    - `data/icons/io.github.AparokshaUI.AdwaitaTemplate.Source.svg`
    - `data/icons/io.github.AparokshaUI.AdwaitaTemplate.svg`
    - `data/icons/io.github.AparokshaUI.AdwaitaTemplate-symbolic.svg`
4. Edit the code. Help is available [here](https://david-swift.gitbook.io/adwaita/), ask questions in the [discussions](https://github.com/AparokshaUI/Adwaita/discussions/).
5. You can edit the app's icons using the previously installed tools according to [this](https://blogs.gnome.org/tbernard/2019/12/30/designing-an-icon-for-your-app/) tutorial.
6. In GNOME Builder, click on the dropdown next to the hammer and then on `Export`. Wait until the file manager appears, open the `.flatpak` file and install the app on your device!
7. If you want to publish your app, replace `debug` in the following build commands by `release`:
```
"swift build -c debug --static-swift-stdlib",
"install -Dm755 .build/debug/AdwaitaTemplate /app/bin/AdwaitaTemplate",
```

### Flatpak SPM Generator

If you want to e.g. publish your app on Flathub where no internet connection is allowed while running the build commands,
you can use [this tool](https://github.com/flatpak/flatpak-builder-tools/tree/master/spm) that lets you generate a Flatpak manifest JSON from a Swift package.

## Thanks

### Dependencies
- [Adwaita for Swift](https://github.com/AparokshaUI/Adwaita) licensed under the [MIT License](https://github.com/AparokshaUI/Adwaita/blob/main/LICENSE.md)
- [Localized](https://github.com/AparokshaUI/Localized) licensed under the [MIT License](https://github.com/AparokshaUI/Localized/blob/master/LICENSE.md)
