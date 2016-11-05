require 'rails_helper'

describe "Authors page", :type => :feature do
    it "should save the author" do
        visit "/authors/new"
        @author = build(:author)
        fill_in "first_name", with: @author.first_name
        fill_in "last_name", with: @author.last_name
        fill_in "homepage", with: @author.homepage
        click_button "Create Author"
        expect(Author.find_by(first_name: @author.first_name, last_name: @author.last_name, homepage: @author.homepage)).to_not be_nil
    end
end