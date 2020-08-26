alias printcolors='for code ({000..255}) print -P -- "$code: %F{$code}This is how your text would look like%f"'

if $(gls &>/dev/null)
then
  alias ls="gls -F --color"
  alias l="gls -lAh --color"
  alias ll="gls -l --color"
  alias la='gls -A --color'
fi
