require 'rails_helper'

describe 'Paper index page', type: :feature do
  it 'should show all the papers' do
    paper = create :paper
    visit papers_path
    expect(page).to have_text 'Title'
    expect(page).to have_text 'Venue'
    expect(page).to have_text 'Year'
  end
  it "should have a list of authors" do
    paper = create :paper
    expect(paper.authors).to be_empty
  end
  it("should only show the entries as specified by the year filter") {

    paper1 = Paper.create({ year: 1950, venue: "HPI", title: "Hassos Paper", id: 0 })
    paper2 = Paper.create({ year: 1968, venue: "HPI", title: "Hassos Paper", id: 1 })

    visit papers_path(year: "1950")

    expect(page).to have_text("1950")
    expect(page).not_to have_text("1968")
  }
end
