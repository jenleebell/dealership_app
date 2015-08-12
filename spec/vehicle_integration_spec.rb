require ('capybara/rspec')
require ('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions,false)

describe('the path to add a new vehicle', {:type => :feature}) do
  it('processes the user entry and adds it to the vehicle list') do
  visit('/vehicles/new')
  fill_in('make', :with => "Toyota")
  fill_in('model', :with => "Prius")
  fill_in('year', :with => 2000)
  click_button('Add Vehicle')
  expect(page).to have_content ('Success!')
  end
end
