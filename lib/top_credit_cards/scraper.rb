# class TopCreditCards::Scraper

require 'nokogiri'
require 'open-uri'
require 'pry'

require_relative './card.rb'

  #scraper draft
    # @@attributes = {}

    def self.scrape_data
      doc = Nokogiri::HTML(open("https://www.creditcards.com/top-credit-cards.php"))
        attributes = doc.css("div.res-schumer-box")
          attributes.each do |card|
            name = card.first.css("div.res-offer-left a").text.strip

          end

        financial_data = first.css("dd").children
          @@attributes << {:name, :description, :purchases_intro_apr, :balance_transfers_intro_apr, :regular_apr, :annual_fee, :credit_needed, :apply_url}
    end

    def self.scrape_reward

      doc.css("div.row").each do |reward|
        reward =
    end

###____###
# card container = doc.css("div.res-schumer-box")
# card.name = doc.css("div.res-schumer-box").first.css("div.res-offer-left a").text.strip
#card.description = doc.css("div.res-schumer-box").first.css("div.res-details li").text.strip
#apr_details_container = doc.css("div.res-schumer-box").first.css("dd").children
  ##iterate each to create apr_attributes i.e :purchases_intro_apr, :balance_transfers_intro_apr, :regular_apr, :annual_fee, :credit_needed

class Scraper

  def self.scrape_name_description_apply_rul
    doc = Nokogiri::HTML(open("https://www.creditcards.com/top-credit-cards.php"))
    # binding.pry
    # doc.css("div.res-schumer-box").each do |e|
      card = Card.new
      card.name = doc.css("div.res-schumer-box").first.css("div.res-offer-left a").text.strip
      card.description = doc.css("div.res-schumer-box").first.css("div.res-details li").text.strip
      card.save
    # end
    binding.pry
  end


end
Scraper.get_page
