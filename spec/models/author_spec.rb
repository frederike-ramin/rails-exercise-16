require 'rails_helper'

RSpec.describe Author, type: :model do
  it "should create a new instance of author" do
      @author = build(:author)
      expect(@author).to_not be_nil
  end
  it "should return full name" do
    @author = build(:author)
    expect(@author.name).to eq("Alan Turing")
  end
  it "should save the author" do
    @author = build(:author)
    expect(Author.find_by(first_name: @author.first_name, last_name: @author.last_name, homepage: @author.homepage)).to_not be_nil
  end
end
