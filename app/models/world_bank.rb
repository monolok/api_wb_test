class WorldBank < ActiveRecord::Base

  def self.country(name)
	r = HTTParty.get("http://data.undp.org/resource/myer-egms.json?country=#{name}")
  	if not r[0].nil?
  		return r[0]["hdi_rank"]
  	else
  		return "none"
  	end
  end 

end

