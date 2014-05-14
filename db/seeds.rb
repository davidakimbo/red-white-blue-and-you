# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "======= Running Seed Script ======="

CongressPerson.destroy_all

apikey = "3d6c0c31357d497a85e301eb4955c42c"


results_page = 1

while results_page <= 11 do
  sunlightUrl = "http://congress.api.sunlightfoundation.com/legislators/?apikey=" + apikey + "&per_page=50" + "&page=" + results_page.to_s
  response = HTTParty.get(sunlightUrl)
  results = response["results"] # array


  results.each do |result|
  new_politician = CongressPerson.create(first_name: result["first_name"],
                                         last_name: result["last_name"] ,
                                         nickname: result["nickname"],
                                         # img_url: result["img_url"],
                                         title: result["title"] ,
                                         chamber: result["chamber"],
                                         district: result["district"],
                                         in_office: result["in_office"],
                                         state: result["state"],
                                         state_name: result["state_name"],
                                         term_start: result["term_start"],
                                         term_end: result["term_end"],
                                         office: result["office"],
                                         phone: result["phone"],
                                         contact_form: result["contact_form"],
                                         website: result["website"],
                                         twitter_id: result["twitter_id"],
                                         facebook_id: result["facebook_id"],
                                         govtrack_id: result["govtrack_id"])
  end
  results_page = results_page + 1
end
