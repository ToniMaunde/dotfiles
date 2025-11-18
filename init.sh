#!/usr/bin/env bash
declare -a directories
declare -a files

configPath=/Users/milton/.config/

# the directories that are part of the dotfiles repository
directories=(kitty nvim)

# the individual files that are part of the dotfiles repository
files=(starship.toml)

for directory in "${directories[@]}"; do
	if [ "$directory" == kitty ]; then
		rsync -a "${configPath}${directory}" "$(pwd)" --exclude kitty-themes
		# cp -rf "${configPath}${directory}/!kitty-theme" "$(pwd)"
	else
		cp -rf "${configPath}${directory}" "$(pwd)"
	fi
done

# copying sublime text preferences
cp -rf "/Users/milton/Library/Application Support/Sublime Text/Packages/User" "$(pwd)"

for file in "${files[@]}"; do
	cp -f "${configPath}${file}" "$(pwd)"
done
