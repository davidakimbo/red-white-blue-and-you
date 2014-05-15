class CongressPerson < ActiveRecord::Base

  def self.politician_search(query)
    api_key = "3d6c0c31357d497a85e301eb4955c42c"
      HTTParty.get("http://congress.api.sunlightfoundation.com/legislators/locate?zip=#{query}&apikey=#{api_key}")
  end


end
