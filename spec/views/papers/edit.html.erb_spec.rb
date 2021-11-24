require 'rails_helper'

RSpec.describe "papers/edit", type: :view do
  before(:each) do
    @paper = assign(:paper, Paper.create!(
      title: "MyString",
      venue: "MyString",
      year: 1
    ))
  end
end
