# Secdir

Currently under re-work to support the same features, and also provide a safe method of storing secured directories on network and cloud shares/syncs

## Archived version

The archival version is fully functional ; you can install it as follows:

	sudo apt-get update && sudo apt-get install encfs

	sudo cp archive/secdir /usr/local/bin/secdir

To create a secured directories store:

	mkdir /home/user/my_secure_dirs
	cd /home/user/my_secure_dirs

	secdir init

> **WARNING** do NOT use secdir inside a DropBox, Samba share, or other cloud-sync'd/network share solution.
> 
> When mounted, files are available in the clear and would be sybchronized in cleartext.

To open/create a enw secure directory, switch to your directories store and open a named directory

	cd /home/user/my_secure_dirs
	secdir open my_secure_dir

To close an opened secure directory

	cd /home/user/my_secure_dirs
	secdir close my_secure_dir
