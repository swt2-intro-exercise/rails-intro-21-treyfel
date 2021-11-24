require 'rails_helper'

describe 'Paper index page', type: :feature do
  it 'should show all the papers' do
    paper = create :paper
    visit papers_path
    expect(page).to have_text 'Title'
    expect(page).to have_text 'Venue'
    expect(page).to have_text 'Year'
  end
  it "should have a list of authors" do
    paper = create :paper
    expect(paper.authors).to be_empty
  end
end
