set -l nix_shell_info (
  if test -n "$IN_NIX_SHELL"
    echo -n "<nix-shell> "
  end
)

function fish_prompt
    printf '%s %s%s%s > ' $nix_shell_info \
        (set_color $fish_color_cwd) (prompt_pwd) (set_color normal)
end
