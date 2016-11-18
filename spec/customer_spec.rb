require 'spec_helper'

RSpec.describe Customer do
  let(:movie){ Movie.new("Leon", Movie::REGULAR) } 
  let(:rental){ Rental.new(movie, 1) }
  let(:name){ "abe" }
  let(:customer){ Customer.new(name) }
  describe '#add_rental' do
    it 'inclease rentals' do
      expect{ customer.add_rental(rental) }.to change{customer.rentals.size}.by(1)
    end
  end
  describe '#initialize' do
    it '初期化出来ていること' do
      customer = Customer.new("abe")
      expect(customer.rentals).to eq []
    end
  end
  describe '#statement' do
    subject { customer.statement }
    context 'when Movie::REGULAR' do
      before do
        customer.add_rental(rental)
      end
      it { is_expected.to eq "Rental Record for abe\n\tLeon\t2\nAmount owed is 2\nYou earned 1 frequent renter points" }
    end
  end
end
