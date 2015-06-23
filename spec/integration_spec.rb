require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the shoe store website path', {:type => :feature}) do
  it('stores lists of stores with their shoe inventory') do
    visit('/')
    expect(page).to(have_content('See all stores'))
  end
end
