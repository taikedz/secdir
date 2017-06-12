# Secdir

## Installation

	git clone https://github.com/taikedz/secdir
	secdir/install.sh

## Usage

To create a secured directories store:

	mkdir /home/user/my_secure_dirs
	cd /home/user/my_secure_dirs

	secdir init

To open/create a enw secure directory, switch to your directories store and open a named directory

	cd /home/user/my_secure_dirs
	secdir open my_secure_dir

To close an opened secure directory

	cd /home/user/my_secure_dirs
	secdir close my_secure_dir

## Network shares

> **WARNING** do NOT use secdir inside a DropBox, Samba share, or other cloud-sync'd/network share solution.
> 
> When mounted, files are available in the clear and would be sybchronized in cleartext.

By default, secdir decrypts directories into the current working directory.

If you are storing your secure directory on a network share, DropBox, SkyDrive, Google Drive, ownCloud, etc, you MUST NOT mount locally, otherwise the cleartext data will be shared through the network, possibly logged en-route.

Instead, you need to edit the `secdir.enc/config.sh` file and set

	SEC_LOADLOCALLY=false            # <--- mandatory
	SEC_MOUNTROOT="$HOME/safemounts" # <--- for example

You can set `SEC_MOUNTROOT` to any non-network, non-sync path you wish.

