require 'rails_helper'

describe 'Edit page', type: :feature do
  @alan = FactoryBot.create :author
  it 'should render without errors' do
    visit edit_author_path @alan
  end
end

