require_relative '../config/environment'
# require 'lolize/auto'


def run_game
    system "clear"
    tty_home
    play_game
end

while true
    run_game
    TTY::Prompt.new.select("Would you like to play again?") do |menu|
        menu.choice "Sure"
        menu.choice "Fo sure"
        menu.choice "Abso-freaking-lutely"
        menu.choice "No. I am a wimp.".light_magenta => -> do abort("Wow. wow. You are not so dAnk after all.".light_magenta) end
        end
end
