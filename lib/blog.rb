#
# Create your "Blog" class in this file.
#

class Blog
  def initialize input_url = nil
    @url = input_url
  end

  def latest_title
    doc = Net::HTTP.get(URI.parse(@url))
    doc = Hpricot(doc)
    result = doc.search("/html/body/div[2]/div/div[2]/div/div/h3/").first.to_s
  end
end