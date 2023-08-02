require 'rspec'
require_relative '../book'

RSpec.describe Book do
  let(:book_title) { 'Title of the Book' }
  let(:book_author) { 'Author Name' }
  let(:book) { Book.new(book_title, book_author) }

  describe 'Initialization' do
    it 'creates a new Book instance' do
      expect(book).to be_a(Book)
    end

    it 'has a title and author' do
      expect(book.title).to eq(book_title)
      expect(book.author).to eq(book_author)
    end

    it 'has a title and author' do
      expect(book.title).to eq('Title of the Book')
      expect(book.author).to eq('Author Name')
    end
  end
end
