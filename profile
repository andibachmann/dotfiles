# ~/.profile: executed by Bourne-compatible login shells.

if [ -n "$BASH" ]; then
  F=~/.bashrc; [ -f $F ] && source $F
fi

tty -s && mesg n
