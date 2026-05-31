#! /usr/bin/env sh

function inject-cdvorak-layout () {
	local rule_file="${1:-/usr/share/xkeyboard-config-2/rules/evdev.xml}"
	local rule_name="${2:-cdvorak}"
	local rule="<layout>
		<configItem>
			<name>cdvorak</name>
			<shortDescription>cdv</shortDescription>
			<description>Programmers Dvorak for nitpicky devs</description>
			<countryList>
				<iso3166Id>BE</iso3166Id>
			</countryList>
			<languageList>
				<iso639Id>nld</iso639Id>
			</languageList>
		</configItem>
		<variantList />
	</layout>"

	# Check if layout is already registered; if not, inject it
	if ! grep -q "<name>${rule_name}</name>" "${rule_file}" 2>&1 > /dev/null; then
		local formatted="$(echo "${rule}" | sed -E -e ':a;N;$!ba;s/\n/\\n/g')"
		sed -i "/<\/layoutList>/i ${formatted}" "${rule_file}"
	fi
}

function setup-keyboard-layout () {
	local target_dir="${1:-/usr/share/xkeyboard-config-2}"
	local target_file="${target_dir}/symbols/cdvorak"
	local dir=$(pwd)

	if [ ! -f "${target_file}" ]; then
		cp "${dir}/cdvorak" "${target_file}"
	fi

	inject-cdvorak-layout "${target_dir}/rules/evdev.xml"
	localectl set-x11-keymap cdvorak
}

function link-rc-files () {
	(
		cd ~;

		[ -f .bashrc ] && mv .bashrc .bashrc.bck;

		ln -s ~/.dottedFiles/bashrc .bashrc;
		ln -s ~/.dottedFiles/inputrc .inputrc;
		ln -s ~/.dottedFiles/gitconfig .gitconfig;
		ln -s ~/.dottedFiles/tmux.conf .tmux.conf;
		ln -s ~/.dottedFiles/nvim .config/nvim;
		ln -s ~/.dottedFiles/ideavimrc .ideavimrc
	)
}

function install-packages () {
	pacman -S bash-completion tmux eza bat jq yq fzf
	pacman -S neovim base-devel tree-sitter-cli
	pacman -S docker docker-compose
	pacman -S yt-dlp
}

function nvim-packer-sync () {
	local packer_repo_uri='https://github.com/wbthomason/packer.nvim'
	local target_dir="${HOME}/.local/share/nvim/site/pack/packer/start"
	local target="${target_dir}/packer.nvim"

	if [ ! -d "${target_dir}" ]; then
		echo "creating packer base dir '${target_dir}'";
		mkdir -p "${target_dir}"
	fi

	git clone --depth 1 "${packer_repo_uri}" "${target}"
	nvim -c ':PackerSync'
}

setup-keyboard-layout
link-rc-files
install-packages
nvim-packer-sync
