require 'spec_helper'

describe "the people index" do
  it 'see the right header on the index page' do
    visit '/'
    expect(page).to have_content 'Registry App'
  end

  it 'should return the correct prefix to each person' do
    Person.create(first_name: "Carolyn", last_name: "Ganon", age: 24, gender: "female", is_married: false)
    visit '/'
    expect(page).to have_content 'Ms. Carolyn Ganon'
  end


end
