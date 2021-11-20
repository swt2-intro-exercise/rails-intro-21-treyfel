describe "Show author page" do
  it 'should show the author homepage' do
    @alan = FactoryBot.create :author
    visit author_path @alan
    expect(page).to have_text('https://wikipedia.org/Alan_Turing')
  end
end
