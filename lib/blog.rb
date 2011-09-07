#
# Create your "Blog" class in this file.
#

class Blog
  def initialize input_url = nil
    @url = input_url
  end

  def latest_title
    result = Hpricot(Net::HTTP.get(URI.parse(@url))).search("/html/body/div[2]/div/div[2]/div/div/h3/").first.to_s
  end
end