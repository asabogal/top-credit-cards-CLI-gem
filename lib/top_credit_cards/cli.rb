class TopCreditCards::CLI

  def call
    TopCreditCards::Scraper.scrape_and_make_cards

    puts
    puts "***Welcome to Top Credit Cards!!***"
    puts
    puts "Looking for the best credit cards? We can help!"
    puts "For rewards, cash back, and more, check out our top picks below and find the right card for you."

    core
  end

  def core
    puts
    puts "Here are the current offers:"
    puts
    list_rewards
    puts
    puts "Enter 1-15 to learn more about these offers"
    input = gets.strip.to_i

    if input.between?(1,15)
      card = TopCreditCards::Card.find_by_id(input)
      print_card(card)
      dialogue

    else
      puts
      puts "** ERROR **"
      puts "Please enter 1-15 only"
      core
      end
  end

  def dialogue
    puts "Would you like to see the offers again?"
    input = gets.strip.downcase
    if input == "y" || input == "yes"
      core
    elsif input == "n" || input == "no"
      puts "We hope you found the right Credit Card for you!"
      exit
    else
      puts "Please enter 'Yes' or 'No'"
      dialogue
    end
  end

  def list_rewards
    TopCreditCards::Card.all.each.with_index(1) {|card, i| puts "#{i}. #{card.reward}"}
  end

  def print_card(card)
    puts
    puts "-------------- #{card.reward} --------------"
    puts
    puts "               #{card.name}               "
    puts
    puts "Purchases Intro Apr:          #{card.purchases_intro_apr}"
    puts "Balance Transfers Intro Apr:  #{card.balance_transfers_intro_apr}"
    puts "Regular Apr:                  #{card.regular_apr}"
    puts "Annual Fee:                   #{card.annual_fee}"
    puts "Credit Needed:                #{card.credit_needed}"
    puts "Apply Here:                   #{card.apply_url}"
    puts
    puts "-------------- Description --------------"
    puts
    puts "#{card.description}"
    puts
  end

end
