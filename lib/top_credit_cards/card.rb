require 'pry'
class TopCreditCards::Card

  @@all = []

  attr_accessor :type, :name, :description, :purchases_intro_apr, :balance_transfers_intro_apr, :regular_apr, :annual_fee, :credit_needed, :apply_url

  def initialze
    @@all << self.class.all
  end

  def self.all
    @@all
  end

  def self.new_from_page(page)
    card = Card.new
    #add card data attributes
    card
  end


end
