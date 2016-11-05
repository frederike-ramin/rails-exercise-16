require 'rails_helper'

describe "Authors page", :type => :feature do
    it "should save the author" do
        visit '/authors/new'
        fill_in('First name', with: 'Alan')
        fill_in('Last name', with: 'Turing')
        fill_in('Homepage', with: 'http://wikipedia.org/Alan_Turing')
        click_button 'Create Author'
        expect(Author.find_by(first_name: 'Alan', last_name: 'Turing', homepage: 'http://wikipedia.org/Alan_Turing')).to_not be_nil
    end
end