describe 'Author', type: :model do
  author = Author.new(first_name: 'Alan', last_name: 'Turing', homepage: 'https://wikipedia.org/Alan_Turing')
  it 'should properly create new authors' do
    expect(author.first_name).to eq('Alan')
    expect(author.last_name).to eq('Turing')
    expect(author.homepage).to eq('https://wikipedia.org/Alan_Turing')
  end

  it 'name should return the full name fo an author' do
    expect(author.name).to eq('Alan Turing')
  end
end

