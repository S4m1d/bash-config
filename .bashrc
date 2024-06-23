# Source global definitions.
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Setup user specific environment.
# If PATH doesn't already include $HOME/.local/bin and $HOME/bin directories,
# these directories are being prepended to the path.
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
	# prepending user-specific directories in the beginning of the PATH helps us
	# to override some system-wide tools with user-specific executables
	PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi

# User specific aliases and functions.
# This script in case of .bashrc.d directory existence
# executes every file as shell script found inside it.
# It's very handy to not overload main script with configurations
# and to store configurations of different parts in separate files.
if [ -d ~/.bashrc.d ]; then
	for rc in ~/.bashrc.d/*; do
		if [ -f "$rc" ]; then
			. "$rc"
		fi
	done
fi
# unset variable rc to avoid conflicts with further configuration
unnset rc
