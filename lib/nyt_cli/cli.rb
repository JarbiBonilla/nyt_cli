class NytCli::CLI 
  
  def call 
    
    puts "\n Welcome movie fanatics! Would you like to see the latest New York Times critic's movie picks? Type (y/n)"
    input = gets.strip.downcase
    
    if input == "y"
      list 
    elsif input == "n"
      #menu method would go here 
    end 
  end 
  
  def list 
    NytCli::API.new.fetch
      puts "\n Here are the list of movies!"
      sleep(1)
    NytCli::Movie.all.each.with_index(1) do |movie, i|
      puts "#{i}. #{movie.title}."
    end 
  end 
  
  #need movie details method for second level.
  #menu method.
  
  def menu
    
    input = nil 
    
    while input != nil 
      puts "Type in a number to get details of a specific movie."
      if input.to_i > 0 
        #movie_details method goes here.
      elsif input = "exit"
        puts "bye!"
      end 
    end 
  end 
  
  
end