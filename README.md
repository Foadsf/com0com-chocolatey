# com0com Chocolatey Package (Modified)

## Overview

This repository contains a **modified Chocolatey package** for `com0com`—a kernel-mode virtual serial port driver for Windows. The modification addresses issues with the previous package that used an **unsigned installer**, causing failures on systems enforcing driver signature verification.

## Features

- **Uses Signed Installer**: This package now downloads the signed version of the installer, resolving driver signature enforcement issues.
- **Automatic Architecture Detection**: The installation script selects the appropriate installer (`x64` or `x86`) based on your system architecture.
- **Silent Installation**: Seamless installation without user intervention.

## Folder Structure

```
|   com0com.nuspec
|
\---tools
        chocolateyInstall.ps1
```

## Installation

To use the package locally:

1. Clone this repository:
   ```bash
   git clone https://github.com/Foadsf/com0com-chocolatey.git
   cd com0com-chocolatey
   ```
2. Install the package via Chocolatey:
   ```powershell
   choco install com0com --version="3.0.0.1-mod" --prerelease --source="."
   ```

## Known Issues

None reported.

## License

This package adheres to the GPL license as defined by the original `com0com` project on [SourceForge](http://sourceforge.net/projects/com0com/).
