require 'pry'
class TopCreditCards::CLI

  def call
    #need to initialize Card.new?
    #create cards!
    puts "***Welcome to Top Credit Cards!!***"
    puts "Looking for the best credit cards? We can help!"
    puts "For rewards, cash back, and more, check out our top picks below and find the right card for you."
    # puts "Here are the current offers:"

    core
  end

  def core
    #ask user for input
    puts
    puts "Here are the current offers:"
    list_cards
    puts "Enter 1-15 to learn more about these offers"
    input = gets.strip.to_i

    #!!! THIS CODE!!
    #print the card base on input
    #print_card(input) .. ?
    #scrape! .css("div.res-shumer-box") ==> contains card attributes
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


  #list credit card type? :
  #make method to list and call in #call?::
  def list_cards
    a = "a b c"
    # a = TOP TRAVEL REWARDS CREDIT CARD
    # TOP REWARDS CREDIT CARD
    # TOP CASH BACK CREDIT CARD FOR EVERYDAY SPENDING
    # TOP CASH BACK CREDIT CARD FOR FLAT-RATE REWARD
    # TOP NO ANNUAL FEE CREDIT CARD
    # TOP BALANCE TRANSFER CREDIT CARD
    # TOP 0% APR CREDIT CARD
    # TOP SIGN-UP BONUS CREDIT CARD
    # TOP LOW INTEREST CREDIT CARD
    # TOP NO FOREIGN TRANSACTION FEE CREDIT CARD
    # TOP AIRLINE MILES CREDIT CARD
    # TOP BUSINESS CREDIT CARD
    # TOP FAIR CREDIT CREDIT CARD
    # TOP UNSECURED CREDIT CARD FOR BAD CREDIT
    # TOP STUDENT CREDIT CARD
    array = a.split(" ")
    cards = array.each.with_index(1) {|card, i| puts "#{i}. #{card}"}

    #@card_type = TopCreditCards::Card.today
    #card_type.each_with_index {|card, i| puts "#{i}. #{card.type}" }

    #must code the type: Card.type and list each
    #scrape card type attribute of Card class??
    #.css("h2").text.strip
  end


end
