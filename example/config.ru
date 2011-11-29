require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require 'omniauth-ohloh'

  get '/' do
    redirect '/auth/ohloh'
  end

  get '/auth/:provider/callback' do
    content_type 'text/plain'
    request.env['omniauth.auth'].to_hash.inspect rescue "No Data"
  end
  
  get '/auth/failure' do
    content_type 'text/plain'
    request.env['omniauth.auth'].to_hash.inspect rescue "No Data"
  end

use Rack::Session::Cookie

use OmniAuth::Builder do
  provider :ohloh, ENV['OHLOH_API_KEY'], ENV['OHLOH_CONSUMER_SECRET']
end
