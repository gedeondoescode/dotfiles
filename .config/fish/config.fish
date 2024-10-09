if status is-interactive
    # Commands to run in interactive sessions can go here

    # Android 
    set -Ux ANDROID_HOME "$HOME/Android/Sdk"

    # Volta 
    set -Ux VOLTA_HOME "$HOME/.volta"

    # # Homebrew
    # # Taken from: https://github.com/orgs/Homebrew/discussions/4412#discussioncomment-8651316
    set -gx HOMEBREW_PREFIX "/home/linuxbrew/.linuxbrew"
    set -gx HOMEBREW_CELLAR "$HOMEBREW_PREFIX/Cellar"
    set -gx HOMEBREW_REPOSITORY "$HOMEBREW_PREFIX/Homebrew"
    fish_add_path -gP "$HOMEBREW_PREFIX/bin" "$HOMEBREW_PREFIX/sbin"
    ! set -q MANPATH; and set MANPATH ''
    set -gx MANPATH "$HOMEBREW_PREFIX/share/man" $MANPATH
    ! set -q INFOPATH; and set INFOPATH ''
    set -gx INFOPATH "$HOMEBREW_PREFIX/share/info" $INFOPATH

    starship init fish | source
end
