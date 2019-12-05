class NytCli::API 
  
  def fetch
    key = "zGJsaMilAlyHRpjXh4GrERgjsQ32doGS"
    url = "https://api.nytimes.com/svc/movies/v2/reviews/search.json?critics-pick=Y&api-key=#{key}"
    response = HTTParty.get(url)
    response.parsed_response["results"].each do |movie|
      title = movie["display_title"]
      critic = movie["byline"]
      summary = movie["summary_short"]
      link = movie["link"]["url"]
      opening_date = movie["opening_date"]
      #binding.pry 
      
      NytCli::Movie.new(title, critic, summary, link, opening_date)
      #binding.pry
    end 
  end 
end