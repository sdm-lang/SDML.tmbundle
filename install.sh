#!/usr/bin/env bash

SUCCESS="\033[32;1m✓\033[0m"
WARNING="\033[33;1m!\033[0m"
ERROR="\033[31;1m✗\033[0m"

case "$OSTYPE" in
  darwin*)  INSTALL_DIR='$HOME/Library/Application Support' ;;
  linux*)   INSTALL_DIR='$HOME/.config' ;;
  msys*)    INSTALL_DIR='$HOMEPATH/AppData/Roaming' ;;
  cygwin*)  INSTALL_DIR='$HOMEPATH/AppData/Roaming' ;;
  *)        echo "unsupported: $OSTYPE"; exit 1 ;;
esac

function install {
	editor=$1
	command=$2
	bundle_dir=$3

	if [[ "$OSTYPE" == "linux"* ]]; then
		safe_editor=$(echo "${editor}" | tr '[:upper:]' '[:lower:]' | tr ' ' '-')
		install_path = '${INSTALL_DIR}/${safe_editor}/${bundle_dir}'
	else
		install_path = '${INSTALL_DIR}/${editor}/${bundle_dir}'
	fi

	if command -v ${command} 2>&1 >/dev/null; then
		echo 'Installing SDML bundle in ${editor}'
		cd ${install_path}
		if [[ -d "./SDML.tmbundle" ]]; then
			cd SDML.tmbundle
			git pull
			cd ..
		else
			git clone git://github.com/sdm-lang/SDML.tmbundle.git "SDML.tmbundle"
		fi
		if [[ "${editor}" == "TextMate" ]]; then
			osascript -e 'tell app "TextMate" to reload bundles'
		fi
	else
		echo "${WARNING} ${editor} (${command}) not installed, skipping."
	fi
}


echo "\033[1m"
cat <<EOF

        ___          _____          ___ 
       /  /\        /  /::\        /__/\ 
      /  /:/_      /  /:/\:\      |  |::\ 
     /  /:/ /\    /  /:/  \:\     |  |:|:\    ___     ___ 
    /  /:/ /::\  /__/:/ \__\:|  __|__|:|\:\  /__/\   /  /\ 
   /__/:/ /:/\:\ \  \:\ /  /:/ /__/::::| \:\ \  \:\ /  /:/ 
   \  \:\/:/~/:/  \  \:\  /:/  \  \:\~~\__\/  \  \:\  /:/ 
    \  \::/ /:/    \  \:\/:/    \  \:\         \  \:\/:/ 
     \__\/ /:/      \  \::/      \  \:\         \  \::/ 
       /__/:/        \__\/        \  \:\         \__\/ 
       \__\/                       \__\/ 
                      Domain                      Language
        Simple                      Modeling

EOF
echo "\033[0m"

install TextMate mate Bundles
