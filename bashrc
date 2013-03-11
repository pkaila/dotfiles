# History settings
export HISTCONTROL=ignoreboth
export HISTSIZE=10000
shopt -s histappend
export PROMPT_COMMAND="history -a"

# Load functions
RC_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
for f in $(find "${RC_DIR}/functions" -type f); do
  if [ -r "${f}" ]; then
    source "${f}"
  fi
done
