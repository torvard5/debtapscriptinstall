Debtap is a lightweight utility to convert Debian .deb packages into Arch Linux .pkg.tar.zst files, making it easy to install Debian packages on Arch-based systems.

Installation:

git clone [https://aur.archlinux.org/debtap.git](https://aur.archlinux.org/debtap.git)
cd debtap
sudo ./install.sh

After installation, initialize the database:

debtap -u

Example output:

\[INFO] Updating debtap database...
\[INFO] Downloading package lists... \[#####-----] 50%
\[INFO] Downloading package lists... \[##########] 100%
\[INFO] Database updated successfully.

Usage:

Convert a .deb package:

debtap example-package.deb

Example output:

\[INFO] Checking dependencies...
\[OK] All dependencies met.
\[INFO] Extracting package... \[#####-----] 50%
\[INFO] Extracting package... \[##########] 100%
\[INFO] Converting files...
\[INFO] Rebuilding metadata...
\[WARNING] Some binaries may require additional libraries.
\[INFO] Conversion complete: example-package.pkg.tar.zst

Install with pacman:

sudo pacman -U example-package.pkg.tar.zst

Options:

-u  Update the local debtap database
-h  Display help message
-v  Verbose output for debugging
-f  Force overwrite existing converted package

Notes:

Make sure the following dependencies are installed: fakeroot, binutils, tar, xz.
Always run debtap -u before converting packages.
Converted packages may sometimes fail if they rely on system-specific Debian paths.
For troubleshooting, use debtap -v to see detailed logs.

License: MIT License. See LICENSE file for details.
