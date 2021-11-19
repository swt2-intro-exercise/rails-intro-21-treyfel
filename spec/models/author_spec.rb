describe type: :model do
  author = Author.new('Alan', 'Turing', 'https://wikipedia.org/Alan_Turing')
  expect(author.first_name).to eq('Alan')
  expect(author.last_name).to eq('turing')
  expect(author.homepage).to eq('https://wikipedia.org/Alan_Turing')
end
