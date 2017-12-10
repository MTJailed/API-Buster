# API-Buster
A project to detect the use of obscure functions, private APIs and entitlements + Privacy info

# Dependencies
A unix-based operating system with BASH
Python
lief (python package)

# Components
- machoparse (A script to parse MACH-O Binaries and show info about them)
- apibuster (A script to examine the use of obscure symbols, private APIs, entitlements and privacy sensitive information sharing)
- badsymbols.txt (A dictionary of obscure symbols)
