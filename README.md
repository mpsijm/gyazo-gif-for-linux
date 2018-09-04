Gyazo GIF for Linux
===================

This repository contains a simple tool that uses [Byzanz](https://github.com/GNOME/byzanz) (a GIF recording tool) and [Gyazo](https://github.com/gyazo/Gyazo-for-Linux/) (an online image hosting service).

Usage
-----
- Install required packages: `apt install byzanz libgtk-3-dev gyazo-for-linux`
- Clone this repository
- Compile the .c file using `make`
- Run `gyazo-gif`
- Select a rectangle with the mouse (pressing Escape will cancel selection)
- By default, a GIF of 10 seconds will be recorded and uploaded to Gyazo

Configuration
-------------
Any arguments that are passed to `gyazo-gif` are directly passed to `byzanz-record`. Please refer to `man byzanz-record` for details. Note that the `x`, `y`, `w` and `h` arguments will already be set.

Sources
-------
- The file `byzanz-get-rect.c` was copied and altered from the [gnome-screenshot](https://github.com/GNOME/gnome-screenshot/blob/master/src/screenshot-area-selection.c) package (version 3.30).
