require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe 'the word_count path', :type=>:feature do
  it('takes a sentence inputed by the user along with a word, and will output the number of times the word occured in the sentence.') do
    visit('/')
    fill_in('sentence', :with => 'A great thing, that does a thing, saving you the effort of doing that one thing')
    fill_in('word_find', :with => 'thing')
    click_button('Find your word!')
    expect(page).to have_content('The word is repeated 3 time(s)')
  end
end
