# ===============================================
# |        CONFIG PERSONAL - CUSTOM FISH         |
# ===============================================

# ===== ZOXIDE (debe ir fuera para evitar problemas) =====
zoxide init fish | source

# ===== SOLO INTERACTIVO =====
if status is-interactive

    # ===== ICONOS BONITOS (EZA) =====
    alias ls "eza --icons --grid --group-directories-first --color=always"
    alias l "eza -lh --icons --group-directories-first"
    alias lt "eza --tree --icons"
    alias ll "eza -la --icons --group-directories-first"

function clear
    command clear
    printf '\e[3J'
end

    # ===== ABRIR ARCHIVOS =====
    alias open "xdg-open"

end

# ─── TEXTO BASE ───
set -g fish_color_normal F5E3D7

# ─── COMANDOS (sudo, mkdir, etc.) ───
set -g fish_color_command FFFB00

# ─── ERRORES ───
set -g fish_color_error DE4747

# ─── ARGUMENTOS NORMALES ───
set -g fish_color_param F5E3D7

# ─── RUTAS (~/ ./ / etc) ───
set -g fish_color_cwd 16B577
set -g fish_color_valid_path 16B577

# ─── STRINGS ───
set -g fish_color_quote EDE0D4

# ─── OPERADORES (>, |, &&, etc.) ───
set -g fish_color_operator 00FF47

# ─── REDIRECCIONES ───
set -g fish_color_redirection E76F51

# ─── AUTOSUGERENCIAS ───
set -g fish_color_autosuggestion 696262

# ─── SELECCIÓN (IMPORTANTE) ───
set -g fish_color_selection --background=EDE0D4 --foreground=1B1B1D

# ─── CURSOR ───
set -g fish_color_cursor F58745

# ===== FLUTTER SDK =====
fish_add_path $HOME/development/flutter/bin

# ===== SPICETIFY =====
fish_add_path /home/julian/.spicetify

set -gx EZA_COLORS "\
di=1DF477:\
fi=F5E3D7:\
ex=F4E31D:\
ln=F6E637:\
or=D62828:\
mi=D62828:\
pi=9C8F07:\
so=9C8F07:\
bd=706705:\
cd=706705:\
su=F4E31D:\
sg=F6E637:\
tw=1DF477:\
ow=9C8F07:\
"

