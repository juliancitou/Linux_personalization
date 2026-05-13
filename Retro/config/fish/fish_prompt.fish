function fish_prompt
    set last_status $status

    echo ""
    echo ""

    # ─── ICONO (SIEMPRE AMARILLO) ───
    set_color F5E3D7    
    if test "$PWD" = "$HOME"
        echo -n "⑁━╾  "
    else if test "$USER" = "root"
        echo -n "╭━╾  "
    else
        echo -n "╭━╾  "
    end

    # ─── RUTA POR POSICIÓN (FIJA) ───
    set path (string replace $HOME "~" $PWD)
    set parts (string split "/" $path)

    set i 1
    for part in $parts
        if test -n "$part"

            switch $i
                case 1
                    set_color 181601   
                case 2
                    set_color 706705   
                case 3
                    set_color 9C8F07   
                case 4
                    set_color F4E31D   
                case '*'
                    set_color F6E637   
                    
            end

            echo -n "$part"

            if test $i -lt (count $parts)
                set_color 969696
                echo -n " ⧽ "
            end
        end

        set i (math "$i + 1")
    end

    echo -n " "

    # ─── GIT ───
    set branch (git branch --show-current 2>/dev/null)
    if test -n "$branch"
        set_color 1DF477
        echo -n 
        echo -n "──➜  $branch "

        if not git diff --quiet 2>/dev/null
            set_color FFA1BC
            echo -n "✕"
        else if not git diff --cached --quiet 2>/dev/null
            set_color FFFFFF
            echo -n "●"
        else
            set_color 00FF00
            echo -n "✓"
        end
    end

    echo ""

    # ─── LÍNEA FINAL ───
    set_color F5E3D7
    echo -n "╰━━╾"

    if test $last_status -ne 0
        set_color D62828
    else
        set_color F5E3D7
    end

    echo -n "⊳ "
    set_color normal
end
