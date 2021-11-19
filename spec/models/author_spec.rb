describe 'Author Model', type: :model do
  it 'should properly create new authors' do
    author = Author.new(first_name: 'Alan', last_name: 'Turing', homepage: 'https://wikipedia.org/Alan_Turing')
    expect(author.first_name).to eq('Alan')
    expect(author.last_name).to eq('Turing')
    expect(author.homepage).to eq('https://wikipedia.org/Alan_Turing')
  end
end
