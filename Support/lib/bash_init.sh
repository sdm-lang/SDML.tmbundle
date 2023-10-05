#!/usr/bin/env bash

[[ -f "${TM_SUPPORT_PATH}/lib/bash_init.sh" ]] && . "${TM_SUPPORT_PATH}/lib/bash_init.sh"

PATH=$PATH:$HOME/.cargo/bin

require_cmd sdml

SDML_COMMAND=${SDML_COMMAND:=$(which sdml)}
SDML_DRAWING_FORMAT=${SDML_DRAWING_FORMAT:=png}

function run_sdml_generate {
	sdml_cmd=$1
	input_file=$2
	output_file=$3
	
	if [[ -z "$4" ]]; then
		output_format=${SDML_DRAWING_FORMAT}
	else
		output_format=$4
	fi
	
	if [[ -z "${input_file}" ]]; then
		cat <<HTML
<h3 class="error">No input path</h3>
<p>
	Can't convert a file if no file provided.
</p>
HTML
		exit_show_html;
	else
		if ! ${SDML_COMMAND} ${sdml_cmd} --output-format ${output_format} --input-file ${input_file} --output-file ${output_file}; then 
			exit 3
		fi
		rescan_project
		open ${output_file}
	fi
}
