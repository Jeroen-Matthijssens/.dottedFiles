#! /usr/bin/env bash

function clean_session () {
	tmux kill-window -a
}

function create_windows () {
	for name in 'services' 'remote' 'develop'; do
		tmux rename-window "${name}"
		tmux new-window
	done
}

function layout_split_top_with_bottom () {
	tmux select-window -t "${1}"

	tmux split-window -c '#{pane_current_path}'
	tmux split-window -c '#{pane_current_path}'

	tmux select-pane -t 0
	tmux split-window -h -c '#{pane_current_path}'
	tmux resize-pane -y '10'

	tmux select-pane -t 3
	tmux resize-pane -y '10'
}

function layout_double_split_top () {
	tmux select-window -t "${1}"

	tmux split-window -c '#{pane_current_path}'
	tmux select-pane -t 0
	tmux split-window -h -c '#{pane_current_path}'
	tmux split-window -h -c '#{pane_current_path}'
	tmux select-pane -t 0
	tmux split-window -h -c '#{pane_current_path}'

	tmux resize-pane -y '10'
}

function setup () {
	clean_session
	create_windows

	layout_double_split_top 'services'
	layout_split_top_with_bottom 'remote'
	layout_split_top_with_bottom 'develop'

	tmux select-window -t 0
}

setup
