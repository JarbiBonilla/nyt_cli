class NytCli::CLI 
  
  def call 
    
    puts "\n Welcome movie fanatics! Would you like to see the latest New York Times critic's movie picks?"
    puts "y/n"
    NytCli::API.fetch
  end 
end