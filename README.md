# Description
this repository contains config scripts for bash shell

# Prepending numbers to filenames inside .bashrc.d explanation
for scanning bash config files we use the following script:
```bash
if [ -d ~/.bashrc.d ]; then
	for rc in ~/.bashrc.d/*; do
		if [ -f "$rc" ]; then
			. "$rc"
		fi
	done
fi
```
it executes files in alphabetical order, so it is useful to esure, that execution order of scripts is correct.
