# Libinput Update Script

This updates Libinput to any version available from Debian.

See the latest version available here:
https://github.com/wayland-project/libinput/releases

And here:
https://packages.debian.org/source/sid/libinput

Debian repositories have most versions of Libinput. The script will alert you if the version you entered is not found.

## Compatibility

This script should be compatible with any Debian-based system. I use this on Ubuntu 17.10.

For best results, make sure your computer already has the latest version of Libinput installed from your distro maintainer, and make sure Libinput is already in use (this script will not enable Libinput for you).

## Usage

```./update-amd64.sh```

You will be prompted for a version number. Enter it as such: ```1.10.5```

The script will alert you and abort if the version you entered is not found.

After the installation is complete, reboot your machine.
