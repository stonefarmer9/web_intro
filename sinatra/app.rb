require 'sinatra'

set :session_secret, 'super secret'

get '/' do
  'You shall know no fear'
end

get '/secret' do
  "You shall know no pain"
end

get '/cat' do
  @random_name = ["Angry Ron", "Hungry Hippo", "Viking the greek", "Morty", "Rick", "C'thulhu", "Yogg-sototh"].sample
  erb:index
end

get '/bikes' do
  erb:bikes
end
