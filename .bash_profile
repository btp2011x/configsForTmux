source ~/.bashrc

# enable colors
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced


function srcbash {
	source ~/.bash_profile
}
function backupbash {
	cp ~/.bash_profile ~/backup
	cp ~/.bashrc ~/backup
	printf '\nbash configurations have been backed up to ~/backup...\n\n' 
}
function restorebash {
	cp ~/backup/.bash_profile ~
	cp ~/backup/.bashrc ~
	printf '\nbash configurations have been restored by the backup...\n\n'
}
function exportconfigs {
    cp ~/.bash_profile ~/.bashrc ~/.tmux.conf ~/.vimrc ~/.tmuxinator/default.yml ~/github/configsForTmux
    git -C ~/github/configsForTmux pull
    git -C ~/github/configsForTmux add .
    git -C ~/github/configsForTmux commit -m "laksjd"
    git -C ~/github/configsForTmux push
    printf '\nconfigs exported successfully...\n\n'
}
function importconfigs {
    git -C ~/github/configsForTmux pull
    cp ~/github/configsForTmux/.bashrc ~/.bashrc
    cp ~/github/configsForTmux/.bash_profile ~/.bash_profile
    cp ~/github/configsForTmux/.vimrc ~/.vimrc
    cp ~/github/configsForTmux/.tmux.conf ~/.tmux.conf
    cp ~/github/configsForTmux/default.yml ~/.tmuxinator/default.yml
    printf '\nconfigs imported successfully\n\n'
}
source ~/.bash_git

PS1="\[\033[35m\]\w\[\033[0m\]\$(__git_ps1)\[\033[35m\] $ \[\033[0m\]"

