#######################################
#               Pacman                #
#######################################

# Pacman
abbr pacupg 'sudo pacman -Syu'
abbr pacin 'sudo pacman -S'
abbr paclean 'sudo pacman -Sc'
abbr pacins 'sudo pacman -U'
abbr paclr 'sudo pacman -Scc'
abbr pacre 'sudo pacman -R'
abbr pacrem 'sudo pacman -Rns'
abbr pacrep 'pacman -Si'
abbr pacreps 'pacman -Ss'
abbr pacloc 'pacman -Qi'
abbr paclocs 'pacman -Qs'
abbr pacinsd 'sudo pacman -S --asdeps'
abbr pacmir 'sudo pacman -Syy'
abbr paclsorphans 'sudo pacman -Qdt'
abbr pacrmorphans 'sudo pacman -Rs $(pacman -Qtdq)'
abbr pacfileupg 'sudo pacman -Fy'
abbr pacfiles 'pacman -F'
abbr pacls 'pacman -Ql'
abbr pacown 'pacman -Qo'
abbr pacupd "sudo pacman -Sy"

function paclist
    pacman -Qqe | xargs -I{} -P0 --no-run-if-empty pacman -Qs --color=auto "^{}\$"
end

###############################################
#             Yay Package Manager             #
###############################################
abbr yaconf 'yay -Pg'
abbr yaclean 'yay -Sc'
abbr yaclr 'yay -Scc'
abbr yaupg 'yay -Syu'
abbr yasu 'yay -Syu --noconfirm'
abbr yain 'yay -S'
abbr yains 'yay -U'
abbr yare 'yay -R'
abbr yarem 'yay -Rns'
abbr yarep 'yay -Si'
abbr yareps 'yay -Ss'
abbr yaloc 'yay -Qi'
abbr yalocs 'yay -Qs'
abbr yalst 'yay -Qe'
abbr yaorph 'yay -Qtd'
abbr yainsd 'yay -S --asdeps'
abbr yamir 'yay -Syy'
abbr yaupd "yay -Sy"

function upgrade
    echo ":: Checking Arch Linux PGP Keyring..."
    set -l installedver "$(LANG= sudo pacman -Qi archlinux-keyring | grep -Po '(?<=Version         : ).*')"
    set -l currentver "$(LANG= sudo pacman -Si archlinux-keyring | grep -Po '(?<=Version         : ).*')"

    if [ $installedver = $currentver ]
        echo " Arch Linux Keyring version $installedver matches the current available version $currentver"
        echo " Oh you're good"
    else
        echo " WARN: Versions don't match!"
        echo " Arch Linux PGP Keyring is out of date"
        sudo pacman -Sy --needed -no-confirm archlinux-keyring
    end

    # Go through with installing with Yay, otherwise Pacman if yay is not present
    if command -q yay
        yay -Syu
    else
        sudo pacman -Syu
    end
end
