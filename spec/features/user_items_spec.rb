require 'spec_helper'

describe 'item list' do
  it 'displays a list of items' do
    Item.new(name: "Man Beer", description: "This manly beer is for manly men.").save
    visit '/items'
    page.should have_content('beer')
  end
end