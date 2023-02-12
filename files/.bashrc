
if [ -f ~/.bash_profile ]; then
	. ~/.bash_profile
fi


alias cal='cal -m' # monday - first day in week
alias df='df -h'
alias feh='feh --scale-down'
alias free='free -m'
alias mg='mg -n'
alias mmmm='mount /mnt/flash; df -h'
alias sudo='doas'
alias tcl='rlwrap tclsh'
alias vim='nvim'
alias weather='curl wttr.in/SPB'
alias uuuu='umount /mnt/flash; df -h'

_cht_complete()
{
    local cur prev opts
    _get_comp_words_by_ref -n : cur

    COMPREPLY=()
    cur="${COMP_WORDS[COMP_CWORD]}"
    prev="${COMP_WORDS[COMP_CWORD-1]}"
    opts="$(curl -s cheat.sh/:list)"

    if [ ${COMP_CWORD} = 1 ]; then
	  COMPREPLY=( $(compgen -W "${opts}" -- ${cur}) )
	  __ltrim_colon_completions "$cur"
    fi
    return 0
}
complete -F _cht_complete cht.sh

#factorial() { #$1 = number
    #    perl -MMath::BigInt -le 'print "Math::BigInt->new($1)->bfac()"'
    #perl -le '$f = 1; $f *= $_ for 1.."$1"; print $f'
#}

