for script in `ls $HOME/.dotfiles/zsh.d/*.zsh`; do
  source $script
done

echo "\nWelcome, ${USER}@${HOST}!\n"
fortune
echo

# bun completions
[ -s "/Users/synic/.bun/_bun" ] && source "/Users/synic/.bun/_bun"
