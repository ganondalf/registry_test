require 'spec_helper'

describe "the people index" do
  it 'see the right header on the index page' do
    visit '/'
    expect(page).to have_content 'Registry App'
  end

  it 'should add "Mrs." to a married female' do
    Person.create(first_name: "Carolyn", last_name: "Ganon", age: 24, gender: "female", is_married: false)
    visit '/'
    expect(page).to have_content 'Ms. Carolyn Ganon'
  end

  it 'should add "Mrs." to all married women' do
    Person.create(first_name: "Michelle", last_name: "Ganon", age: 55, gender: "female", is_married: true)
    visit '/'
    expect(page).to have_content 'Mrs. Michelle Ganon'
  end

  it 'should add "Mr." to all men' do
    Person.create(first_name: "Bill", last_name: "Ganon", age: 55, gender: "male", is_married: true)
    visit '/'
    expect(page).to have_content 'Mr. Bill Ganon'
  end

end
