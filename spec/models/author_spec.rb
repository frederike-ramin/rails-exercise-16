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
