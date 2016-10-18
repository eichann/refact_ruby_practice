require 'spec_helper'

RSpec.describe Movie do
  describe '#initialize' do
    it '属性に正しく値が入ること' do
      movie = Movie.new("Leon", Movie::REGULAR)
      expect(movie.title).to eq "Leon"
      expect(movie.price_code).to eq 0
    end
  end
end
