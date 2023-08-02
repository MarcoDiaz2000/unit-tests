require 'rspec'
require_relative '../rental'
require_relative '../book'
require_relative '../person'

RSpec.describe Rental do
  let(:book) { Book.new('Title of the Book', 'Author Name') }
  let(:person) { Person.new(25, name: 'John Doe') }
  let(:date) { '2023-07-30' }
  let(:rental) { Rental.new(date, book, person) }

  it 'creates a new Rental instance' do
    expect(rental).to be_a(Rental)
  end

  it 'has a date, book, and person' do
    expect(rental.date).to eq(date)
    expect(rental.book).to eq(book)
    expect(rental.person).to eq(person)
  end

  it "adds the rental to the book's rentals list" do
    expect(book.rentals).to include(rental)
  end

  it "adds the rental to the person's rentals list" do
    expect(person.rentals).to include(rental)
  end
end
