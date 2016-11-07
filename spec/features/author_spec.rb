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
describe "Authors index page", :type => :feature do
    it "should render" do
        visit '/authors'
    end

    it "should list name and homepage of all authors"
        create(:author)
        visit '/authors'

        expect(page).to have_text('Alan Turing')
        expect(page).to have_test('http://wikipedia.org/Alan_Turing')
    end
end