require 'pry'
class Customer
  attr_reader :name, :rentals
  def initialize(name)
    @name = name
    @rentals = []
  end

  def add_rental(arg)
    rentals << arg
  end

  def statement
    result = "Rental Record for #{@name}\n"
    rentals.each do |element|
      #このレンタルの料金を表示
      result += "\t" + element.movie.title + "\t" + element.charge.to_s + "\n"
    end
    result += "Amount owed is #{total_charge}\n"
    result += "You earned #{frequent_renter_points} frequent_renter_points"
    result
  end

  private

  def total_charge
    rentals.inject(0) { |sum, rental| sum + rental.charge }
  end

  def frequent_renter_points
    rentals.inject(0) { |sum, rental| sum + rental.frequent_renter_points }
  end
end

