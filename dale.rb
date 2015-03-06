require 'sinatra'
require 'nokogiri'
require 'restclient'

get '/' do
  @medilexicon = Nokogiri::HTML(RestClient.post 'http://www.medilexicon.com/drugsearch.php?z=true', {:params => {'foo' => 'bar'}})

  erb :index
end