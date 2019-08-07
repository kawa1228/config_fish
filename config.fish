# alias

## grep 検索
# -n 行数表示, -I バイナリファイル無視, svn関係のファイルを無視
alias grep "grep --color -n -I --exclude='*.svn-*' --exclude='entries' --exclude='*/cache/*'"

alias ls='ls -a'
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias ...='cd ../..'
alias ....='cd ../../..'
alias less='less -NM'

## Git
alias gco='git checkout'
alias gcom='git checkout master'
alias gcb='git checkout -b'
### 選択したブランチに移動
alias gb='gco (git branch| fzy)'

alias gd='git diff'
alias gdca='git diff --cached'

alias gs='git status --short'

alias gsts='git stash save'
alias gstd='git stash drop'
alias gstp='git stash pop'
alias gstl='git stash list'

### gstd 0 で0番目のstashの中身を見る
function gstd
  git diff stash"@{@1}"
end

alias ga='git add'
alias gaa='git add ./'
alias gap='git add -p'

alias gc-m='git commit -v -m'
### コミットメッセージの変更
alias gc!='git commit -v --amend'
### 直前のコミット取り消し
alias grsh='git reset --soft HEAD^'
alias gp='git push'
alias grso='git remote set-url origin'
### 新しく作ったブランチをpushする時に使うやつ(git push new branchの略)
alias gpnb=' git push --set-upstream origin `git rev-parse --abbrev-ref HEAD`'

# cdの後にlsする
## fishは$1ではなく$argvで指定する
function cd
  builtin cd $argv
  ls
end
