require 'rails_helper'

describe 'Author index page', type: feature do
  it 'should show all the authors' do
    @alan = FactoryBot.create :author
    visit authors_url
    expect(page).to have_text 'Name'
    expect(page).to have_text 'Homepage'
    expect(page).to have_link 'New', href: new_author_path
  end
end