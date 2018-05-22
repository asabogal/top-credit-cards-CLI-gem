class TopCreditCards::Scraper

  def self.scrape_and_make_cards
    doc = Nokogiri::HTML(open("https://www.creditcards.com/top-credit-cards.php"))
    rewards = doc.css("h2").collect {|e| e.text}.first(15)
      data = doc.css("div.res-schumer-box")
        data.each_with_index do |info, i|
          card = TopCreditCards::Card.new
          card.reward = rewards[i]
          card.name = info.css("div.res-offer-left a").text.strip
          card.description = info.css("div.res-details li").collect {|e| e.text}.first(8).join("\n")
          card.purchases_intro_apr = info.css("li.first-row dd")[0].text
          card.balance_transfers_intro_apr = info.css("li.first-row dd")[1].text
          card.regular_apr = info.css("li.first-row dd")[2].text
          card.annual_fee = info.css("li.first-row dd")[3].text
          card.credit_needed = info.css("li.first-row dd")[4].text
          card.apply_url = info.css("div.res-field-apply-now a").attribute("href").value
          card.save
        end
  end
end
