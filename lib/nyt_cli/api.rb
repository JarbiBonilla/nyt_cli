class NytCli::API 
  
  def self.fetch
    key = "zGJsaMilAlyHRpjXh4GrERgjsQ32doGS"
    url = "https://api.nytimes.com/svc/movies/v2/reviews/search.json?critics-pick=Y&api-key=#{key}"
    response = HTTParty.get(url)
    response.parsed_response["results"].each do |movie|
      binding.pry
    end 
  end 
end