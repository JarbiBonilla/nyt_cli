class NytCli::CLI 
  
  def call 
    NytCli::API.fetch
    puts "hello world"
  end 
end