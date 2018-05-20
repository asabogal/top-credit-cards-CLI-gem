class TopCreditCards::CLI

  def call
    puts "***Welcome to Top Credit Cards!!***"
    puts "Looking for the best credit cards? We can help!"
    puts "Here are the current offers:"
    list_cards
    start
  end

  def start
    #ask user for input
    puts "Enter 1-15 to learn more about these offers"
    input = gets.strip.to_i
  end

  #list credit card type? :
  #make method to list and call in #call?

  #puts?:
  def list_cards
    puts "1. TOP TRAVEL REWARDS CREDIT CARD
    2. TOP REWARDS CREDIT CARD
    3. TOP CASH BACK CREDIT CARD FOR EVERYDAY SPENDING
    4. TOP CASH BACK CREDIT CARD FOR FLAT-RATE REWARD
    5. TOP NO ANNUAL FEE CREDIT CARD
    6. TOP BALANCE TRANSFER CREDIT CARD
    7. TOP 0% APR CREDIT CARD
    8. TOP SIGN-UP BONUS CREDIT CARD
    9. TOP LOW INTEREST CREDIT CARD
    10. TOP NO FOREIGN TRANSACTION FEE CREDIT CARD
    11. TOP AIRLINE MILES CREDIT CARD
    12. TOP BUSINESS CREDIT CARD
    13. TOP FAIR CREDIT CREDIT CARD
    14. TOP UNSECURED CREDIT CARD FOR BAD CREDIT
    15. TOP STUDENT CREDIT CARD"

    #scrape card type attribute of Card class??
    #.css("h2").text.strip
  end





end
