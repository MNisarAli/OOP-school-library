require 'rental'
require 'book'
require 'person'
describe Rental do
  context 'Testing the Rental class' do
    book = Book.new('Beauty queen', 'Wendy')
    person = Person.new(36)
    date = '03-31-2023'
    rental = Rental.new(date, book, person)
    it 'should validate the date of the rental' do
      expect(rental.date).to eq date
    end
    it 'should validate the person who rented the book' do
      expect(rental.person).to eq person
    end
    it 'should validate the book being rented' do
      expect(rental.book).to eq book
    end
  end
end
