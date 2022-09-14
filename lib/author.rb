class Author
  attr_reader :name,
              :books

  def initialize(author_hash)
    @name = "#{author_hash[:first_name]} #{author_hash[:last_name]}"
    @books = []
  end

  def write(title, publication_date)
    book_hash = {author_first_name: @name.split[0],
                 author_last_name: @name.split[1],
                 title: title,
                 publication_date: publication_date
  }
    create_book(book_hash)
  end

  def create_book(book_hash)
    book = Book.new(book_hash)
    @books << book
    book
  end
end