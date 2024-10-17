if status is-interactive
    # Commands to run in interactive sessions can go here

    # Android 
    set -Ux ANDROID_HOME "$HOME/Android/Sdk"

    # Volta 
    set -Ux VOLTA_HOME "$HOME/.volta"

    starship init fish | source
end
