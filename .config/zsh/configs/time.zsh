
### Time Of A Command ###

autoload colors && colors

: ${ZSH_CMD_STATUS_DURATION_THRESHOLD:=10}

function _zsh_cmd_render_duration() {
  local duration=$1
  local sec=$(( duration % 60 ))
  local min=$(( duration % 3600 / 60 ))
  local hour=$(( duration / 3600 ))
  if [[ $hour -gt 0 ]]; then
    printf '%dh %dm %ds' $hour $min $sec
  elif [[ $min -gt 0 ]]; then
    printf '%dm %ds' $min $sec
  else
    printf '%ds' $sec
  fi
}

function _zsh_cmd_duration() {
  if [ -z "${_zsh_cmd_status_start_time}" ]; then
      return 0
  fi
  local end_time
  end_time="$SECONDS"
  local duration=$(( end_time - _zsh_cmd_status_start_time ))
  local threshold=${ZSH_CMD_STATUS_DURATION_THRESHOLD:=10}
  if [ "$duration" -lt "$threshold" ]; then
    return 0
  fi
  pretty="$(_zsh_cmd_render_duration ${duration})"
  printf "${fg_bold[white]}took ${pretty}${reset_color}"
}

function _zsh-cmd-status-preexec() {
  _zsh_cmd_status_preexec_was_run=true
  _zsh_cmd_status_start_time="$SECONDS"
}

function _zsh-cmd-status-precmd() {
  local dur="$(_zsh_cmd_duration)"

  if [[ -z "${_zsh_cmd_status_preexec_was_run}" ]]; then
    return 0
  fi

  local out=(${ret} ${dur})
  out="${(j: & :)out}"
  if [[ -n "${out}" ]]; then
    printf "\n${out}\n"
  fi

  unset _start_time
  unset _zsh_cmd_status_preexec_was_run
}

autoload -Uz add-zsh-hook
add-zsh-hook preexec _zsh-cmd-status-preexec
add-zsh-hook precmd _zsh-cmd-status-precmd
