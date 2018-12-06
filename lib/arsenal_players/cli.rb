class CLI
    def start
        puts "Welcome to Arsenal Players!"
        Scraper.new.scrape_arsenal
        menu
    end

    def menu
        Player.all.each.with_index(1) do |player, index|
            puts "#{index}. #{player.first_name} #{player.last_name}"
        end
    end
end