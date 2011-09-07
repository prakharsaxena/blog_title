#
# Create your "Blog" class in this file.
#

require 'net/http'
require 'hpricot'
require 'pry'
require 'open-uri'



class Blog
  def initialize input_url = nil
    @url = input_url
  end

  def latest_title
    @uri = URI.parse(@url)
    doc = open(@uri) { |f| Hpricot(f) }
    result = doc.search("/html/body/div[2]/div/div[2]/div/div/h3/").first.to_s
  end
end