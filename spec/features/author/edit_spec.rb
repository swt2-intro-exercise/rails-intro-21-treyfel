require 'rails_helper'

describe 'Edit page', type: :feature do
  it 'should render without errors' do
    author = create :author
    visit edit_author_path author.id
  end
end

