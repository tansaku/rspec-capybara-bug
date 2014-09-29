require 'sinatra'

class SinatraApp < Sinatra::Base
  get '/sinatra_error' do
    an_undefined_method
    'A string that does not appear in the sinatra error page'
  end
  get '/normal_page' do
    'A normal page'
  end
end