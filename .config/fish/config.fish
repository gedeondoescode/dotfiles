if status is-interactive
    # Commands to run in interactive sessions can go here

    # Android 
    set -Ux ANDROID_HOME "$HOME/Android/Sdk"

    # Volta 
    set -Ux VOLTA_HOME "$HOME/.volta"

    # Zig
    set -Ux ZVM_INSTALL "$HOME/.zvm/self/"

    # Nvidia Vulkan cuz apparently some applications can't find that shit
    set -Ux VK_DRIVER_FILES /usr/share/vulkan/icd.d/nvidia_icd.json
    starship init fish | source
end

thefuck --alias | source

# eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
