for script in `ls $HOME/.dotfiles/zsh.d/*.zsh`; do
  source $script
done

echo "\nWelcome, ${USER}@${HOST}!\n"
fortune
echo

# bun completions
[ -s "/Users/synic/.bun/_bun" ] && source "/Users/synic/.bun/_bun"

## [Completion]
## Completion scripts setup. Remove the following line to uninstall
[[ -f /Users/synic/.dart-cli-completion/zsh-config.zsh ]] && . /Users/synic/.dart-cli-completion/zsh-config.zsh || true
## [/Completion]


export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
