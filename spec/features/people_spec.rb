require 'spec_helper'

describe "the people index" do
  it 'see the right header on the index page' do
    visit '/'
    expect(page).to have_content 'Registry App'
  end

  it 'should add "Mrs." to a married female' do
    visit '/'
    expect(page).to have_content 'Ms. Carolyn Ganon'
  end

  it 'should add "Mr." to all men' do
    visit '/'
    expect(page).to have_content 'Mrs. Michelle Ganon'
  end

  it 'should add "Mr." to all men' do
    visit '/'
    expect(page).to have_content 'Mr. Bill Ganon'
  end

end
