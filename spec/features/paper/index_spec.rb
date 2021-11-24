require 'rails_helper'

describe 'Paper index page', type: :feature do
  it 'should show all the papers' do
    paper = create :paper
    visit papers_path
    expect(page).to have_text 'title '
    expect(page).to have_text 'venue'
    expect(page).to have_text 'year'
  end
end
