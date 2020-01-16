#
# Functions
#

# The name of the current branch
# Back-compatibility wrapper for when this function was defined here in
# the plugin, before being pulled in to core lib/git.zsh as git_current_branch()
# to fix the core -> git plugin dependency.
function current_branch() {
  git_current_branch
}

#
# Aliases
# (sorted alphabetically)
#

alias g='git'

alias gad='git add'
alias gada='git add --all'
alias gadpa='git add --patch'
alias gadu='git add --update'
alias gadv='git add --verbose'

alias gap='git apply'

alias gbl='git blame -b -w'

alias gbr='git branch'
alias gbra='git branch -a'
alias gbrd='git branch -d'
alias gbrD='git branch -D'
alias gbrr='git branch --remote'
#alias gbrnm='git branch --no-merged'

alias gbs='git bisect'
alias gbsb='git bisect bad'
alias gbsg='git bisect good'
alias gbsr='git bisect reset'
alias gbss='git bisect start'

alias gcm='git commit -v'
alias gcm!='git commit -v --amend'
alias gcmn!='git commit -v --no-edit --amend'
alias gcma='git commit -v -a'
alias gcma!='git commit -v -a --amend'
alias gcman!='git commit -v -a --no-edit --amend'
alias gcmans!='git commit -v -a -s --no-edit --amend'
alias gcmam='git commit -a -m'
alias gcmsm='git commit -s -m'
alias gcmm='git commit -m'
alias gcmS='git commit -S'

alias gco='git checkout'
alias gco!='git checkout --'
alias gcom='git checkout master'
alias gcod='git checkout develop'
alias gcoh='git checkout hotfix'
alias gcob='git checkout -b'

alias gcf='git config --list'

alias gcl='git clone --recurse-submodules'
alias gsl='git shortlog -sn'

alias gcp='git cherry-pick'
alias gcpa='git cherry-pick --abort'
alias gcpc='git cherry-pick --continue'

alias gdf='git diff'
alias gdfocb='git diff origin/$(git_current_branch)'
alias gdfno='git diff --name-only'
alias gdfis='git diff --ignore-all-space'
alias gdfwd='git diff --word-diff'
alias gdfca='git diff --cached'
alias gdfcawd='git diff --cached --word-diff'

alias gdfm='git diff master'
alias gdfh='git diff HEAD'
alias gdfh1='git diff HEAD~1'
alias gdfh2='git diff HEAD~2'
alias gdfh3='git diff HEAD~3'
alias gdfh4='git diff HEAD~4'
alias gdfh5='git diff HEAD~5'

alias gdfism='git diff --ignore-all-space master'
alias gdfish='git diff --ignore-all-space HEAD'
alias gdfish1='git diff --ignore-all-space HEAD~1'
alias gdfish2='git diff --ignore-all-space HEAD~2'
alias gdfish3='git diff --ignore-all-space HEAD~3'
alias gdfish4='git diff --ignore-all-space HEAD~4'
alias gdfish5='git diff --ignore-all-space HEAD~5'

alias gft='git fetch'
alias gfta='git fetch --all'
alias gftap='git fetch --all --prune'
alias gfto='git fetch origin'

alias gpl='git pull -p'
alias gplrb='git pull --rebase'
alias gplrbv='git pull --rebase -v'
alias gpllum='git pull upstream master'
alias gplocb='git pull origin "$(git_current_branch)"'
alias gpsocb='git push origin "$(git_current_branch)"'

alias gbrsuocb='git branch --set-upstream-to=origin/$(git_current_branch)'

alias glg='git log'
alias glgp='git log --stat -p'
alias glgg='git log --graph'
alias glgo='git log --oneline --decorate'
alias glgga='git log --graph --decorate --all'
alias glgog='git log --oneline --decorate --graph'
alias glgoga='git log --oneline --decorate --graph --all'
alias glgmc='git log --graph --max-count=10'
#alias glgol="git log --graph --pretty='%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'"
#alias glgols="git log --graph --pretty='%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --stat"
#alias glgod="git log --graph --pretty='%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ad) %C(bold blue)<%an>%Creset'"
#alias glgods="git log --graph --pretty='%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ad) %C(bold blue)<%an>%Creset' --date=short"
#alias glgola="git log --graph --pretty='%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --all"

alias gmg='git merge'
alias gmgm='git merge master'
alias gmgd='git merge develop'
alias gmgh='git merge hotfix'
alias gmgocb='git merge origin/$(git_current_branch)'
alias gmga='git merge --abort'
alias gmgc='git merge --continue'

alias gmt='git mergetool --no-prompt'
alias gmtvim='git mergetool --no-prompt --tool=vimdiff'

alias gps='git push'
alias gpsv='git push -v'
alias gpsd='git push --dry-run'
alias gpsf='git push --force-with-lease'
alias gpsf!='git push --force'
alias gpsoat='git push origin --all && git push origin --tags'
alias gpsu='git push upstream'
alias gpssup='git push --set-upstream origin $(git_current_branch)'

alias grm='git remote'
alias grma='git remote add'
alias grmrn='git remote rename'
alias grmrm='git remote remove'
alias grmsu='git remote set-url'
alias grmud='git remote update'
alias grmv='git remote -v'

alias grb='git rebase'
alias grbi='git rebase -i'
alias grbih1='git rebase -i HEAD~1'
alias grbih2='git rebase -i HEAD~2'
alias grbih3='git rebase -i HEAD~3'
alias grbih4='git rebase -i HEAD~4'
alias grbih5='git rebase -i HEAD~5'
alias grba='git rebase --abort'
alias grbc='git rebase --continue'
alias grbs='git rebase --skip'
alias grbm='git rebase master'
alias grbd='git rebase develop'
alias grbom='git fetch;git rebase origin/master'
alias grbiom='git fetch;git rebase -i origin/master'
alias grbocb='git fetch;git rebase origin/$(git_current_branch)'
alias grbiocb='git fetch;git rebase -i origin/$(git_current_branch)'

alias grv='git revert'
alias grl='git reflog'
alias grlcb='git reflog $(git_current_branch)'

alias grs='git reset'
alias grsh='git reset --hard'
alias grsocb='git reset origin/$(git_current_branch)'
alias grshocb='git reset --hard origin/$(git_current_branch)'
alias grs!='git reset --'

alias gr='git rm'
alias grca='git rm --cached'

alias gsh='git show'
alias gshps='git show --pretty=short --show-signature'

alias gs='git status'
alias gss='git status -s'
alias gssb='git status -sb'

alias gsts='git stash save'
alias gsta='git stash apply'
alias gstc='git stash clear'
alias gstd='git stash drop'
alias gstl='git stash list'
alias gstp='git stash pop'
alias gstsu='git stash save -u'

alias gsmi='git submodule init'
alias gsmu='git submodule update'

alias gtg='git tag'
alias gtgs='git tag -s'
alias gtgv='git tag | sort -V'

#plumbing commands
if [ ! -z ${enable_git_plumb} ]; then
    echo 'enable git plumbing commands!'
    alias gcft='git cat-file -t'
    alias gcfs='git cat-file -s'
    alias gcfp='git cat-file -p'
    alias glf='git ls-files'
else
    echo 'disable git plumbing commands!'
fi
