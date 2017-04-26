require('sinatra')
require('sinatra/reloader')
require('./lib/hangman')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

post ('/hangman') do
  input = params.fetch('input')
  hangman = Hangman.new("Hippo", input)
  @answer_show = hangman.blank()
  @answer_show = hangman.compare_input()
  erb(:index)
end

get('/title') do
  # @title = (params.fetch('title1')).rps()
  erb(:title)
end
