require 'pry'
class TopCreditCards::CLI

  def call
    TopCreditCards::Scraper.scrape_and_make_cards
    #create cards!
    puts "***Welcome to Top Credit Cards!!***"
    puts "Looking for the best credit cards? We can help!"
    puts "For rewards, cash back, and more, check out our top picks below and find the right card for you."

    core
  end

  def core
    #ask user for input
    puts
    puts "Here are the current offers:"
    list_rewards
    puts "Enter 1-15 to learn more about these offers"
    input = gets.strip.to_i

    #!!! THIS CODE!!
    #print the card base on input
    #display_card_from_input(input) .. ?
    #scrape! .css("div#all-schumer-boxes") ==> contains card attributes
    dialogue
  end

  #after card is displayed
  #create user interaction!!
  def dialogue
    puts "Would you like to see other offers?"
    input = gets.strip.downcase
    if input == "y" || input == "yes"
      core
    elsif input == "n" || input == "n"
      puts "We hope you found the right Credit Card for you!"
      exit
    else
      puts "Please enter 'Yes' or 'No'"
      dialogue
    end
  end

  def list_rewards
    TopCreditCards::Card.all.each.with_index(1) {|card, i| puts "#{i}. #{card.name}"}
        ##reduced functionality to list names not rewards
  end


end
