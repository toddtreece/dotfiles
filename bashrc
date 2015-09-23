if [ -f ~/.bash_aliases ]; then
  . ~/.bash_aliases
fi

_yargs_completions()
{
    local cur_word args type_list

    cur_word="${COMP_WORDS[COMP_CWORD]}"
    args=$(printf "%s " "${COMP_WORDS[@]}")

    # ask yargs to generate completions.
    type_list=`adafruit-io --get-yargs-completions $args`

    COMPREPLY=( $(compgen -W "${type_list}" -- ${cur_word}) )

    # if no match was found, fall back to filename completion
    if [ ${#COMPREPLY[@]} -eq 0 ]; then
      COMPREPLY=( $(compgen -f -- "${cur_word}" ) )
    fi

    return 0
}
complete -F _yargs_completions adafruit-io
