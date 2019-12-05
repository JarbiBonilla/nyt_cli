class NytCli::CLI 
  
  def call 
     NytCli::API.new.fetch
    puts "\n Welcome movie fanatics! Would you like to see the latest New York Times critic's movie picks? Type (y/n)"
    input = gets.strip.downcase
     
    if input == "y"
      list 
      menu
    elsif input == "n"
      bye
    else 
      puts "This is not a valid option. Please choose one of the options.".red.bold
      puts "\n -----------------------------------------------------------\n"
      sleep(1)
      menu
    end 
  end 
  
  def list 
      puts "\n ~~~~~~~Here are the list of movies!~~~~~~~~\n"
      sleep(1)
    NytCli::Movie.all.each.with_index(1) do |movie, i|
      puts "#{i}. #{movie.title}."
    end 
  end 
  
  #need movie details method for second level.
  #menu method.
  
  def menu
    
    input = nil 
    
    while input != "exit"
      puts "Type in a number to get details of a specific movie."
      puts "Type list to see the list of movies."
      puts "Type exit to leave the program."
      puts "\n------------------------------------------------------------\n"
      input = gets.strip.downcase
      if input.to_i > 0
        movie_details(input)
      elsif input == "list"
        list
      elsif input == "exit"
        bye
      end 
    end 
  end 
  
  def movie_details(input)
    movie = NytCli::Movie.all[input.to_i - 1]
      puts "Title: #{movie.title}"
      puts "Critic: #{movie.critic}"
      puts "Short Summary of movie: #{movie.summary}"
      puts "Movie link: #{movie.link}"
      puts "Opening date: #{movie.opening_date}"
  end 
  
  def bye 
    puts "\n See you later!!"
  end 
end