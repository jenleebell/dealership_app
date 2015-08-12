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

describe('view the vehicles list with saved entry ', {:type => :feature}) do
  it('displays vehicle list with saved entry') do
  visit('/vehicles')
  expect(page).to have_content ("Prius")
  end
end

describe('the path to view more information about a specific vehicle',{:type => :feature})do
  it('displays more detailed information about a specific vehicle') do
  visit('/vehicles/1')
  expect(page).to have_content("Toyota Prius 2000")
  end
end


end
