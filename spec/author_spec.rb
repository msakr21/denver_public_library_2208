require 'rspec'
require './lib/book'
require './lib/author'

RSpec.describe Author do
  it "1. exists" do
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})

    expect(charlotte_bronte).to be_a(Author)
  end

  it "2. has readable attribute 'name'" do
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})

    expect(charlotte_bronte.name).to eq("Charlotte Bronte")
  end

  it "3. has a readable array attribute 'books' that is empty by default" do
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})

    expect(charlotte_bronte.books).to eq([])
  end

  it "4. has a method 'write' to create an instance of book in the books array attribute" do
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})

    expect(charlotte_bronte.books).to eq([])
    jane_eyre = charlotte_bronte.write("Jane Eyre", "October 16, 1847")
    expect(jane_eyre.class).to eq(Book)
    expect(jane_eyre.title).to eq("Jane Eyre")
    villette = charlotte_bronte.write("Villette", "1853")
    expect(charlotte_bronte.books).to include(jane_eyre, villette)
  end
end