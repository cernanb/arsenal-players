class Scraper

    def scrape_arsenal
        html = open('https://www.arsenal.com/first-team/players')
        doc = Nokogiri::HTML(html)
        doc.css('.player-card').each do |player|
          first_name = player.css('.player-card__info__position-or-first-name').text
          last_name = player.css('.player-card__info__name').text
        end
    end

end