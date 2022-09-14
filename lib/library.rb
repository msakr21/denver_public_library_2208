class Library
  attr_reader :name,
              :books,
              :authors,
              :checked_out_books

  def initialize(name)
    @name = name
    @books = []
    @authors = []
    @checked_out_books = []
  end

  def add_author(author)
    @authors << author
    @books << author.books
    @books.flatten!
  end

  def publication_years(author)
    author.books.map do |book|
      book.publication_year
    end
  end

  def publication_time_frame_for(author)
    publication_time_frame = {}
    publication_time_frame[:start] = publication_years(author).sort.first
    publication_time_frame[:end] = publication_years(author).sort.last
    publication_time_frame
  end

  def checkout(book)
    if (@books - @checked_out_books).include?(book)
      @checked_out_books << book
      true
    else
      false
    end
  end

  def return(book)
    @checked_out_books.delete(book)
  end

  def most_popular_book
  end
end