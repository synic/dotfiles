for script in `ls $HOME/.dotfiles/zsh.d/*.zsh`; do
  source $script
done

echo "\nWelcome, ${USER}@${HOST}!\n"
fortune
echo

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
