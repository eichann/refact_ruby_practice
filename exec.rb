require './movie'
require './rental'
require './customer'

movie =  Movie.new("Roman holiday", Movie::NEW_RELEASE)
rental = Rental.new(movie, 2)
customer = Customer.new("abe")
customer.add_rental(rental)
puts customer.statement
