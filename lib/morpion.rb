require "curses"
require_relative "game"
include Curses

init_screen
curs_set(0) 
start_color


begin
  class Game_init
    def menu
      init_pair(COLOR_WHITE,COLOR_WHITE,COLOR_BLACK)
      init_pair(COLOR_BLUE,COLOR_BLUE,COLOR_BLACK)
      win = Curses::Window.new(30, 60, 1, 2)
      win.clear()
      win.box("|", "-")
      win.setpos(14, 23)
      win.addstr("SAYNA Present")
      win.refresh
      sleep 1

      win.clear
      win.box("|", "-")
      win.setpos(14, 25)
      win.addstr("Creer par ")
      win.setpos(15, 22)
      win.addstr("Franklin Hyriol")
      win.refresh
      sleep 1

      win.clear     
      win.box("|", "-")
      win.attron(color_pair(COLOR_WHITE)|A_NORMAL)
      win.setpos(10, 9)
      win.addstr(" _      ____  ____  ____  _  ____  _     ")
      win.setpos(11, 9)
      win.addstr("/ \\__/|/  _ \\/  __\\/  __\\/ \\/  _ \\/ \\  /|")
      win.setpos(12, 9)
      win.addstr("| |\\/||| / \\||  \\/||  \\/|| || / \\|| |\\ ||")
      win.setpos(13, 9)
      win.addstr("| |  ||| \\_/||    /|  __/| || \\_/|| | \\||")
      win.setpos(14, 9)
      win.addstr("\\_/  \\|\\____/\\_/\\_\\\\_/   \\_/\\____/\\_/  \\|")
      win.refresh
      sleep 1

        win.clear
        win.box("|", "-")
        win.attron(color_pair(COLOR_BLUE)|A_BOLD)
        win.setpos(3, 9)
        win.addstr(" _      ____  ____  ____  _  ____  _     ")
        win.setpos(4, 9)
        win.addstr("/ \\__/|/  _ \\/  __\\/  __\\/ \\/  _ \\/ \\  /|")
        win.setpos(5, 9)
        win.addstr("| |\\/||| / \\||  \\/||  \\/|| || / \\|| |\\ ||")
        win.setpos(6, 9)
        win.addstr("| |  ||| \\_/||    /|  __/| || \\_/|| | \\||")
        win.setpos(7, 9)
        win.addstr("\\_/  \\|\\____/\\_/\\_\\\\_/   \\_/\\____/\\_/  \\|")


        win.attron(color_pair(COLOR_WHITE)|A_NORMAL)
        win.setpos(14, 19)
        win.addstr("______________________")
        win.setpos(15, 19)
        win.addstr("|                    |")
        win.setpos(16, 19)
        win.addstr("| 1: Nouvelle partie |")
        win.setpos(17, 19)
        win.addstr("|____________________|")
        win.setpos(19, 23)
        win.addstr("______________")
        win.setpos(20, 23)
        win.addstr("|            |")
        win.setpos(21, 23)
        win.addstr("| 2: Quitter |")
        win.setpos(22, 23)
        win.addstr("|____________|")
        win.refresh
    

      init_pair(COLOR_RED,COLOR_RED,COLOR_BLACK)

      dans_le_menu = 1
      win.keypad(true)
      curs_set(0)
      choix = 0
      Curses.noecho

      while dans_le_menu
        win.setpos(26, 24)
        win.attron(color_pair(COLOR_WHITE)|A_BLINK)
        win.addstr("votre choix")
        win.attron(color_pair(COLOR_WHITE)|A_NORMAL)
        win.setpos(26, 37)
        choix = win.getch().to_i
        case choix
          when 1
            win.close()
            nouvelle_partie
          when 2
            close_screen
            exit()
        end
      end
    end
  end
  game = Game_init.new
  game.menu
rescue
  close_screen
end