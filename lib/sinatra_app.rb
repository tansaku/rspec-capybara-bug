require 'sinatra'
require 'byebug'

class SinatraApp < Sinatra::Base

  # uncomment this to see tests fail correctly
  #set :show_exceptions, false

  get '/sinatra_error' do
    an_undefined_method
    'A string that does not appear in the sinatra error page'
  end
  get '/normal_page' do
    'A normal page'
  end
end