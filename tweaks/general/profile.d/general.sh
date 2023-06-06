# Add .local/bin to PATH
export PATH=~/.local/bin:$PATH

# Fix pip install error if tmp dir is full
export TMPDIR='/var/tmp'

export EDITOR=micro

# Allow npm to run not from sudo (For security)
if pacman -Qi npm &> /dev/null; then
  npm config set prefix ~/.local
fi
