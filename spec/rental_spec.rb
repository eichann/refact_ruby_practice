require 'spec_helper'

RSpec.describe Rental do
  describe '#initialize' do
    let(:movie){ Movie.new("Leon", Movie::REGULAR) } 
    it '属性に正しく値が入ること' do
      rental = Rental.new(movie, 2)
      expect(rental.days_rented).to eq 2
      expect(rental.movie).to eq movie
    end
  end
end

