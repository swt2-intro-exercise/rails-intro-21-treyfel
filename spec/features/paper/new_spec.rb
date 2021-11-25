describe 'New paper page', type: :feature do
  it 'should fail when creating an author without a last name' do
    paper = Paper.new(title: '')
    expect(paper).to_not be_valid
  end
  it 'should fail when the year is not numeric' do
    paper = Paper.new(title: 'paper', year: 'ago', venue: 'this')
    expect(paper).to_not be_valid
  end
end