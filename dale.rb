require 'nokogiri'
require 'restclient'
require 'cinch'

medilexicon = Nokogiri::HTML(RestClient.post 'http://www.medilexicon.com/drugsearch.php?z=true', {:params => {'foo' => 'bar'}})

medilexicon.css('#wrapper #level0 #main ul li').each do |link|  
  puts link.content
end