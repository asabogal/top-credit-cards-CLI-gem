# class TopCreditCards::Scraper

# require 'nokogiri'
# require 'open-uri'
# require 'pry'
#
# require_relative './card.rb'
#
#   #scraper draft // need to test!!
  class TopCreditCards::Scraper
    @@attributes = []

    def self.scrape_and_make_cards
      doc = Nokogiri::HTML(open("https://www.creditcards.com/top-credit-cards.php"))
        data = doc.css("div.res-schumer-box")
          data.each do |info|
            card = TopCreditCards::Card.new
            card.name = info.css("div.res-offer-left a").text.strip
            card.description = info.css("div.res-details li").text.strip
            card.purchases_intro_apr = info.css("li.first-row dd")[0].text
            card.balance_transfers_intro_apr = info.css("li.first-row dd")[1].text
            card.regular_apr = info.css("li.first-row dd")[2].text
            card.annual_fee = info.css("li.first-row dd")[3].text
            card.credit_needed = info.css("li.first-row dd")[4].text
            card.apply_url = info.css("div.res-field-apply-now a").attribute("href").value
            # @@attributes << {name: name, description: description, purchases_intro_apr: purchases_intro_apr, balance_transfers_intro_apr: balance_transfers_intro_apr, regular_apr: regular_apr, annual_fee: annual_fee, credit_needed: credit_needed, apply_url: apply_url}
            card.save
          end
          # binding.pry
    end



#     def self.scrape_reward
#       doc = Nokogiri::HTML(open("https://www.creditcards.com/top-credit-cards.php"))
#         doc.css("div.row").each do |name|
#         reward = name.css("h2").text
#           @@attributes << {reward: reward}
#       end
#
#     end
#
# ## not ideal but use for now
#     def self.make_cards
#       15.times do
#       card = Card.new
#       scrape_reward
#       scrape_card_data
#       card.save
#       end
#       binding.pry
#     end
# Scraper.make_cards


end
