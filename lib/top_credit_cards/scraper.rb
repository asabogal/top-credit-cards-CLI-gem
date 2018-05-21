# class TopCreditCards::Scraper

require 'nokogiri'
require 'open-uri'
require 'pry'

require_relative './card.rb'

  #scraper draft // need to test!!
  class Scraper
    @@attributes = []

    def self.scrape_card_data
      doc = Nokogiri::HTML(open("https://www.creditcards.com/top-credit-cards.php"))
        data = doc.css("div.res-schumer-box")
          data.each do |card|
            name = card.css("div.res-offer-left a").text.strip
            description = card.css("div.res-details li").text.strip
            purchases_intro_apr = card.css("li.first-row dd")[0].text
            balance_transfers_intro_apr = card.css("li.first-row dd")[1].text
            regular_apr = card.css("li.first-row dd")[2].text
            annual_fee = card.css("li.first-row dd")[3].text
            credit_needed = card.css("li.first-row dd")[4].text
            apply_url = card.css("div.res-field-apply-now a").attribute("href").value
            @@attributes << {name: name, description: description, purchases_intro_apr: purchases_intro_apr, balance_transfers_intro_apr: balance_transfers_intro_apr, regular_apr: regular_apr, annual_fee: annual_fee, credit_needed: credit_needed, apply_url: apply_url}
          end

    end


    def self.scrape_reward
      doc = Nokogiri::HTML(open("https://www.creditcards.com/top-credit-cards.php"))
        doc.css("div.row").each do |name|
        reward = name.css("h2").text
          @@attributes << {reward: reward}
      end

    end

## not ideal but use for now
    def self.make_cards
      15.times do
      card = Card.new
      scrape_reward
      scrape_card_data
      card.save
      end
      binding.pry
    end
Scraper.make_cards


end
