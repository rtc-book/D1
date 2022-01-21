# vm-vagrant

This repository contains all files and instructions necessary to create your own virtual machine for your development environment to accompany the book _Real-Time Computing for Mechanical Engineers_. The following should work on a host machine with Windows, macOS, and Linux.

## Installation

1. Install Virtualbox: https://www.virtualbox.org/wiki/Downloads
2. Install the Extension Pack (same page).
3. Install Vagrant: https://www.vagrantup.com/downloads
4. Clone, fork, or download this repository. If you do not yet know what `git` is or have it installed on your host computer, simply download this repository by clicking the green **Code** button, then **Download ZIP**, and unzip. We assume you now have this repo in a directory `vm-vagrant` (or `vm-vagrant-main`).
5. There are two ways to generate the virtual machine. 
	1. In a [terminal window](#terminals), `cd` into the directory `vm-vagrant` (or `vm-vagrant-main`) and simply:
	```console
	vagrant up
	```
	2. Use a provided automatic installer for your operating system. 
		1. On macOS, double-click `mac-installer.app`.
		2. On Windows, double-click `win-installer.bat` (untested).

After several minutes (the download is over 10 GB), this will create a new VM called `rtcbook-dist` that should be available in VirtualBox and boot right up. Note that everything should be set up (needs testing) through Part 3 of the CDT for myRIO instructions here:
http://courses.washington.edu/mengr477/resources/CDT_for_myRIO.pdf

After this initial setup, the virtual machine can be accessed directly through Virtual Box.

## Running your virtual machine

The VM you have created is probably already opened in VirtualBox. If not, or later, after you have shut it down, open your VirtualBox app, locate your VM `rtcbook-dist` and double-click (or `Start`).

The **password** is by default `vagrant` for the default user Vagrant. It is recommended you keep the default user profile and password.

You're up and running!

## Troubleshooting installation

Here are some general considerations, independent of host OS.

1. When generating the virtual machine, `A VirtualBox machine with the name 'rtcbook-dist' already exists`: You have already built the virtual machine. If you are just trying to open the virtual machine, there's no need to rebuild, open VirtualBox and double-click your virtual machine `rtcbook-dist`. If it was unsuccessful and you want to retry, in VirtualBox, right-click the virtual machine `rtcbook-dist`  → `Remove ...`  → `Delete all files`. Now step 5 of [Installation](#installation) should work.

### MacOS host

1. VirtualBox **installation failed**:
	1. Try [this fix](https://mkyong.com/mac/install-virtualbox-on-macos-the-installation-failed/) first.
	2. If that didn't work, explore [these options](https://medium.com/@DMeechan/fixing-the-installation-failed-virtualbox-error-on-mac-high-sierra-7c421362b5b5).
2. Terminal **permission problems**:
	1. Go to  → System Preferences → Security & Privacy → Privacy → Full Disk Access and make sure `Terminal.app` is checked (may need to unlock).
	1. Go to  → System Preferences → Security & Privacy → Privacy → Files and Folders and make sure `Terminal.app` is checked (may need to unlock).

## Terminals

A terminal is an interactive command-line program in which a user enters text commands that are interpreted and executed by the operating system.

For a nice tutorial introduction to the terminal on Windows, macOS, and Linux, see [this article](https://tutorial.djangogirls.org/en/intro_to_command_line/). Only the most rudimentary usage is required here.

In Windows, the standard terminal program is `cmd.exe`. 

On macOS, the standard terminal program is `Terminal.app`.

In all major operating systems, the only standard command needed here is `cd`: change directory. You will use this to navigate to the directory `vm-vagrant`.
