require_relative 'image'
require_relative 'victory'

def nouvelle_partie
    win = Curses::Window.new(30, 60, 1, 2)
    win.clear()
    win.box("|", "-")
    win.setpos(11, 23)
    win.addstr("PARAMETRE")

    win.setpos(14, 20)
    win.addstr("(O) votre nom: ")
    nom1 = win.getstr()
    win.setpos(15, 12)
    win.attron(color_pair(COLOR_BLUE)|A_NORMAL)
    win.addstr("#{nom1.capitalize!} vous etes le player 1 vous jouer O")
    win.refresh()

    win.setpos(17, 20)
    win.attron(color_pair(COLOR_WHITE)|A_NORMAL)
    win.addstr("(X) votre nom: ")
    nom2 = win.getstr()
    win.setpos(18, 12)
    win.attron(color_pair(COLOR_BLUE)|A_NORMAL)
    win.addstr("#{nom2.capitalize!} vous etes le player 2 vous jouer X")
    win.refresh()
    curs_set(0)
    sleep 2

    win.clear
    win.refresh
    $win2 = win.subwin(20, 40, 9, 15)
    $win2.attron(color_pair(COLOR_WHITE)|A_NORMAL)
    board()
    win.box("|", "-")
    $win2.refresh
    win.refresh

    $tour = 1
    Curses.noecho
    choix = 0

    matrice = [0, 0, 0, 0, 0, 0, 0, 0, 0]

    loop do
        if $tour == 1
            win.setpos(4, 10)
            win.attron(color_pair(COLOR_WHITE)|A_NORMAL)
            win.addstr("                                   ")
            win.setpos(4, 15)
            win.addstr("#{nom1} c'est votre tour")
            win.refresh()
            choix = win.getch().to_i
            while (choix < 1 || choix > 9) || matrice[choix] != 0
                win.setpos(4, 10)
                win.attron(color_pair(COLOR_WHITE)|A_NORMAL)
                win.addstr("                                   ")
                win.setpos(4, 10)
                win.addstr("#{nom1} vous ete NUL")
                win.refresh()
                choix = win.getch().to_i
            end
            matrice[choix] = 1
            image(choix)
            $tour = 2
        else
            win.setpos(4, 10)
            win.attron(color_pair(COLOR_WHITE)|A_NORMAL)
            win.addstr("                                   ")
            win.setpos(4, 15)
            win.addstr("#{nom2} c'est votre tour")
            win.refresh()
            choix = win.getch().to_i
            while (choix < 1 || choix > 9) || matrice[choix] != 0
                win.setpos(4, 10)
                win.attron(color_pair(COLOR_WHITE)|A_NORMAL)
                win.addstr("                                   ")
                win.setpos(4, 10)
                win.addstr("#{nom2} vous ete NUL")
                win.refresh()
                choix = win.getch().to_i
            end
            matrice[choix] = 2
            image(choix)
            $tour = 1
        end
        if victory?(matrice) == 1
            win.clear()
            win.box("|", "-")
            win.setpos(11, 15)
            win.addstr("#{nom1} vous avez gagne")
            win.setpos(14, 15)
            win.addstr("#{nom2} vous ete NULL => NULL")
            win.setpos(16, 15)
            win.addstr("Enter pour quitter le jeux")
            win.refresh()
            win.getstr
            $win2.close()
            win.close()
            close_screen
        elsif victory?(matrice) == 2
            win.clear()
            win.box("|", "-")
            win.setpos(11, 15)
            win.addstr("#{nom2} vous avez gagne")
            win.setpos(14, 15)
            win.addstr("#{nom1} vous ete NULL => NULL")
            win.setpos(16, 15)
            win.addstr("Enter pour quitter le jeux")
            win.refresh()
            win.getstr
            $win2.close()
            win.close()
            close_screen
        end           
    end
end

