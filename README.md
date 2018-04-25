# Libinput Update Script

This updates Libinput to any version available from Debian.

See the latest version available here:
https://github.com/wayland-project/libinput/releases

And here:
https://packages.debian.org/source/sid/libinput

Debian repositories have most versions of Libinput. The script will alert you if the version you entered is not found.

## Usage

```./update-amd64.sh```

You will be prompted for a version number. Enter it as such: ```1.10.5```

The script will alert you and abort if the version you entered is not found.
