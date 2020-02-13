set -U fish_greeting

set -x PATH $PATH ~/.scripts
set -x PATH $PATH ~/.local/bin
set -x EDITOR nvim
# Start X at login
if status --is-login
	if test -z "$DISPLAY" -a $XDG_VTNR = 1
		exec startx -- -keeptty
	end
end

# --- git -------------------------------------------------------------------- #
abbr g 'git'
abbr ga 'git add'
abbr gb 'git branch'
abbr gbl 'git blame'
abbr gc 'git commit -m'
abbr gco 'git checkout'
abbr gcp 'git cherry-pick'
abbr gd 'git diff'
abbr gf 'git fetch'
abbr gl 'git log'
abbr gm 'git merge'
abbr gp 'git push'
abbr gpl 'git pull'
abbr gr 'git remote'
abbr gs 'git status'
abbr gst 'git stash'

# --- ls --------------------------------------------------------------------- #
abbr l 'ls'
abbr ll 'ls -l'
abbr la 'ls -a'
abbr lla 'ls -la'

thefuck --alias | source
