for script in `ls $HOME/.dotfiles/zsh.d/*.zsh`; do
  source $script
done

echo "\nWelcome, ${USER}@${HOST}!\n"

if command -v fortune >/dev/null 2>&1; then
  fortune
  echo
fi

# bun completions
[ -s "/Users/synic/.bun/_bun" ] && source "/Users/synic/.bun/_bun"

if command -v kubectl >/dev/null 2>&1; then
  source <(kubectl completion zsh)
fi
