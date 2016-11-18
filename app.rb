require('sinatra')
require('sinatra/reloader')
require('./lib/word_count')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

post('/result') do
  sentence = params.fetch('sentence')
  word_find = params.fetch('word_find')
  @words_found = sentence.word_count(word_find)
  erb(:result)
end
