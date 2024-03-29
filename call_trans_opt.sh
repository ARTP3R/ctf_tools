#!/bin/bash

# Simple script to start shell like The Matrix movie. By artp3r.
# Add next function and call to .bashrc or .zshrc 

enter_matrix(){
	local matrix_text_delay=0.025 # Movie 0.025
	local matrix_delay=0.5 # Movie 1
	local matrix_green_text="$(tput bold)\e[32m"
	local matrix_reset_text="\e[0m$(tput sgr0)"
	local matrix_date=$(date +'%d-%m-%y')
	local matrix_time=$(date +'%H:%M:%S')
	local matrix_line1="Call trans opt: received $matrix_date $matrix_time REC:Log>"
	local matrix_line2="Trace program: running"
	local matrix_line3="${(%%)PROMPT}"
	clear
	sleep $((3*$matrix_delay))
	for ((i = 0; i < ${#matrix_line1}; i++)); do
	    echo -en "${matrix_green_text}${matrix_line1:$i:1}${matrix_reset_text}"
	    sleep $matrix_text_delay
	done
	sleep $((3*$matrix_delay))
	clear
	sleep $((1*$matrix_delay))
	for ((i = 0; i < ${#matrix_line2}; i++)); do
	    echo -en "${matrix_green_text}${matrix_line2:$i:1}${matrix_reset_text}"
	    sleep $matrix_text_delay
	done
	sleep $((3*$matrix_delay))
	clear
	sleep $((1*$matrix_delay))
	for ((i = 0; i < ${#matrix_line3}; i++)); do
	    echo -en "${matrix_line3:$i:1}"
	    sleep $matrix_text_delay
	done
	clear
}
enter_matrix
