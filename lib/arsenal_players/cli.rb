class CLI
    def start
        puts "Welcome to Arsenal Players!"
        Scraper.new.scrape_arsenal
    end
end