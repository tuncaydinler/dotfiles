if status is-interactive
    # Commands to run in interactive sessions can go here
end
function bobthefish_colors # -S -d 'Define a custom bobthefish color scheme'

    # optionally include a base color scheme...

    # then override everything you want! note that these must be defined with `set -x`
    set -x color_initial_segment_exit ffffff ce000f --bold
    set -x color_initial_segment_private ffffff 255e87
    set -x color_initial_segment_su ffffff 189303 --bold
    set -x color_initial_segment_jobs ffffff 255e87 --bold
    set -x color_path 333333 999999
    set -x color_path_basename 333333 ffffff --bold
    set -x color_path_nowrite 660000 cc9999
    set -x color_path_nowrite_basename 660000 cc9999 --bold
    set -x color_repo addc10 0c4801
    set -x color_repo_work_tree 333333 ffffff --bold
    set -x color_repo_dirty ce000f ffffff
    set -x color_repo_staged f6b117 3a2a03
    set -x color_vi_mode_default 999999 333333 --bold
    set -x color_vi_mode_insert 189303 333333 --bold
    set -x color_vi_mode_visual f6b117 3a2a03 --bold
    set -x color_vagrant 48b4fb ffffff --bold
    set -x color_aws_vault
    set -x color_aws_vault_expired
    set -x color_username cccccc 255e87 --bold
    set -x color_hostname cccccc 255e87
    set -x color_rvm af0000 cccccc --bold
    set -x color_virtualfish 005faf cccccc --bold
    set -x color_virtualgo 005faf cccccc --bold
    set -x color_desk 005faf cccccc --bold
    set -x color_nix 005faf cccccc --bold
end

# set fish_greeting

# fish_config theme save "Catppuccin Frappe"

export PATH="$PATH:/home/tuncay/.dotnet/tools"

export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
set -g -x PATH $PATH /usr/share/rvm/bin
set -gx JAVA_HOME /usr/lib/jvm/java-11-openjdk

alias g=git
alias nv=nvim
alias fs=fastfetch
# mise activate fish | source
# rvm --default use ruby-3.4.2
rvm default
set fish_cursor_visual block
