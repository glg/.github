MY_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

declare -a SHUTDOWN_COMMANDS
function setExitMessage () {
  MESSAGE="${@}"
}
function clearExitMessage () {
  MESSAGE=""
}
function shutdown() {
  test -n "${MESSAGE}" && echo "${MESSAGE}"
	#if we are in 'debug mode' we will just skip the shutdown commands
	test -n "${DEBUG}" && exit
  if [ -z "${MESSAGE}" ]; then
    for c in "${SHUTDOWN_COMMANDS[@]}"; do
      ${c}
    done
  fi
}
trap "shutdown" EXIT

