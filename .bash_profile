if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
        . "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# Load ~/.extra, ~/.bash_prompt, ~/.exports, ~/.aliases and ~/.functions
# ~/.extra can be used for settings you don.t want to commit
for file in ~/.{aliases,functions,bash_prompt,extra}; do
        [ -r "$file" ] && source "$file"
done
unset file

# init z   https://github.com/rupa/z
. ~/code/z/z.sh

