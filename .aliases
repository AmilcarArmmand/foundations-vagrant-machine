# Aliases
# --------------------------------------------------------------------
# Alias definitions are abstracted from the command's initials
# or something that resembles the original.  There are some
# exceptions for commands I seldom use.
# --------------------------------------------------------------------
# Shorter version of a common commands that are used below.
_checkexec() {
	command -v "$1" > /dev/null
}

# --------------------------------------------------------------------
# Common tasks and utilities
# --------------------------
# Check these because some of them modify the behaviour of standard
# commands, such as `cp`, `mv`, `rm`, so that they provide verbose
# output and open a prompt when an existing file is affected.
#
# PRO TIP to ignore aliases, start them with a backslash \.  The
# original command will be used.  This is useful when the original
# command and the alias have the same name.  Example is my `cp` which is
# aliased to `cp -iv`:
#
#	cp == cp -iv
#	\cp == cp
#
# --------------------------------------------------------------------
# cd into the previous working directory by omitting `cd`.
# --------------------------------------------------------------------
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

# --------------------------------------------------------------------
# Safer default for cp, mv, rm.  These will print a verbose output of
# the operations.  If an existing file is affected, they will ask for
# confirmation.  This can make things a bit more cumbersome, but is a
# generally safer option. '-I' prompt once before removing more than three
# files, or when removing recursively.  Less intrusive than -i, while
# still giving  protection against most mistakes.
# --------------------------------------------------------------------
alias cp='cp -iv'
alias mv='mv -iv'
alias rm='rm -Iv'

# --------------------------------------------------------------------
# Make ls a bit easier to read.  Note that the -A is the same as -a but
# does not include implied paths (the current dir denoted by a dot and
# the previous dir denoted by two dots).  The -p option, which prepends
# a forward slash to directories, but it does
# not seem to work with symlinked directories. For more, see `man ls`.
# --------------------------------------------------------------------
alias ls='ls -pv --color=auto --group-directories-first'
alias lsa='ls -pvA --color=auto --group-directories-first'
alias lsl='ls -lhpv --color=auto --group-directories-first'
alias lsla='ls -lhpvA --color=auto --group-directories-first'
alias ll='ls -AlF --color=auto --group-directories-first'
alias la='ls -A --color=auto --group-directories-first'
alias l='ls -CF --color=auto --group-directories-first'

# --------------------------------------------------------------------
# Color coded man pages
# Transition these settings to another file for easier customizing.
# --------------------------------------------------------------------
export LESS_TERMCAP_mb=$'\e[1;32m'
export LESS_TERMCAP_md=$'\e[1;32m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;31m'

# --------------------------------------------------------------------
# Start Emacs as quickly as vim
# --------------------------------------------------------------------
alias em='emacs'


# --------------------------------------------------------------------
# Hipposcraper commands
# --------------------------------------------------------------------
alias hippoproject='python2 /home/vagrant/hipposcraper/hippoproject.py'
alias hipporead='python2 /home/vagrant/hipposcraper/hipporead.py'
alias hipposcrape='python2 /home/vagrant/hipposcraper/hipposcrape.sh'

# --------------------------------------------------------------------
# Git commands
# ------------

if _checkexec git; then
	export GIT_EDITOR="$EDITOR"

	# add, commit
	alias gadd='git add -v'
	alias gaddp='git add --patch'
	alias gaddi='git add --interactive'
  	alias gall='git add -Av'
	alias gcom='git commit' # opens in the predefined editor.
	alias gcomm='git commit -m' # pass a message directly: gcomm 'My commit'
	alias gca='git commit --amend'
	alias grh='git reset HEAD'

	# stats and diffs
	alias gsh='git show'
	alias gsho='git show --oneline'
	alias glo='git log --oneline'
	alias glog='git log'
	alias gsta='git status'
	alias gstat='git status'
	alias gdif='git diff'
	alias gdiff='git diff'
	alias gdifs='git diff --stat --summary'
	alias gdiffss='git diff --stat --summary'

	# branching
	alias gch='git checkout'
	alias gchb='git checkout -b'
	alias gbd='git branch -d'
	alias gbl='git branch --list'
	alias gpd='git push origin --delete'
	alias gmerg='git merge --edit --stat'
	alias gmerge='git merge --edit --stat'

	# tagging
	alias gtag='git tag --sign' # followed by the tag's name
	alias gtagl='git tag --list'

	# syncing
	alias gpull='git pull'
	alias gfetch='git fetch'
	alias gpm='git push -u origin master'
	alias gph='git push -u origin HEAD'
fi

# ====================================================================
# Functions
# ====================================================================

# --------------------------------------------------------------------
# Back up a file. Usage "backupthis <filename>"
# --------------------------------------------------------------------
backupthis() {
	     cp -riv $1 ${1}-$(date +%Y%m%d%H%M).backup;
}

# --------------------------------------------------------------------
# Change directory and list contents, append, natural sort, almost all
# --------------------------------------------------------------------
cd() {
	if [ -n "$1" ]; then
     	     	builtin cd "$@" && ls -pvA --color=auto --group-directories-first
	else
		builtin cd ~ && ls -pvA --color=auto --group-directories-first
	fi
}
