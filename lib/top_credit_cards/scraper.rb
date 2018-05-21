# class TopCreditCards::Scraper

require 'nokogiri'
require 'open-uri'
require 'pry'

class Scraper
  def self.scrape_test
    doc = Nokogiri::HTML(open("https://www.creditcards.com/top-credit-cards.php"))
    binding.pry
    attributes = doc.css("li.first-row dl dt dd")
    # attributes = doc.css("li.first-row dl dd").children.collect {|e| e}
    ### need to develop this further
    ### how will each card have it's own attribute value
    ### create hash???
  end
  self.scrape_test
end
