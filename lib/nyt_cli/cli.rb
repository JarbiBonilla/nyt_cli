class NytCli::CLI 
  
  def call 
    
    puts "\n Welcome movie fanatics! Would you like to see the latest New York Times critic's movie picks? (y/n)"
    input = gets.strip.downcase
    
    if input == "y"
      list 
    elsif input == "n"
      #menu method would go here 
    end 
  end 
  
  def list 
    NytCli::API.new.fetch
    NytCli::Movie.all.each.with_index(1) do |movie, i|
      puts "#{i}. #{movie.title}."
    end 
  end 
end