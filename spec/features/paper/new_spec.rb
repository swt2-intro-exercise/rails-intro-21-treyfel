describe 'New paper page', type: :feature do
  it 'should fail when creating an author without a last name' do
    paper = Paper.new(title: '')
    expect(paper).to_not be_valid
  end
end