require 'rails_helper'

describe 'Paper Edit page', type: :feature do
  it 'should render without errors' do
    paper = create :paper
    visit edit_paper_path paper.id
    expect(page).to have_css('select[multiple]')
  end
end

