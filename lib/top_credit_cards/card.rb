require 'pry'

class TopCreditCards::Card

  @@all = []

  attr_accessor :name, :description, :purchases_intro_apr, :balance_transfers_intro_apr, :regular_apr, :annual_fee, :credit_needed, :apply_url
  #:reward
  def initialze
    # @reward = reward
    @name = name
    @description = description
    @purchases_intro_apr = purchases_intro_apr
    @balance_transfers_intro_apr = balance_transfers_intro_apr
    @regular_apr = regular_apr
    @annual_fee = annual_fee
    @credit_needed = credit_needed
    @apply_url = apply_url

  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  

  # def self.new_from_page(page)
  #   card = Card.new
  #   #add card data attributes
  #   card
  # end

  def self.display_card_from_input(input)
    def self.find(id)
    self.all[id-1]
  end
  end

end
