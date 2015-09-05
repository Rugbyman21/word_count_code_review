require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the word count path', {:type => :feature}) do
  it('scans the sentence for a given word and returns the number of times the word appears') do
    visit('/')
    fill_in('sentence', :with => 'coffee is delicious, coffee taste good')
    fill_in('word', :with => 'coffee')
    click_button('Send')
    expect(page).to have_content('2')
  end
end
