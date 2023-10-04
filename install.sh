#!/usr/bin/env sh

function install {
	editor=$1
	command=$2
	bundle_path=$3
	
	if command -v ${command} 2>&1 >/dev/null; then
		echo 'Installing SDML bundle in ${editor}'
		mkdir -p ${bundle_path}
		cd ${bundle_path}
		if [[ -d "./SDML.tmbundle.git" ]]; then
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
		echo '${editor} (${command}) not installed, skipping.'
	fi
}

install TextMate mate ~/Library/Application\ Support/TextMate/Bundles

install 'Sublime Text' subl ~/Library/Application\ Support/Sublime\ Text/Packages/User
