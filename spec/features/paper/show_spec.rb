describe 'Show paper page' do
  it 'should show the authors of the paper', type: :feature do
    paper = create :paper
    author = create :author
    paper.authors << author
    visit paper_path(paper.id)
    expect(page).to have_text('Alan Turing')
  end
end
