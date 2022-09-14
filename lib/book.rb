class Book
  attr_reader :author,
              :title,
              :publication_year

  def initialize(book_hash)
    @author = "#{book_hash[:author_first_name]} #{book_hash[:author_last_name]}"
    @title = "#{book_hash[:title]}"
    @publication_year = "#{book_hash[:publication_date].split.last}"
  end
end