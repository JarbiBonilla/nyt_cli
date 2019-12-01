class NytCli::Movie
  
  attr_accessor :title, :critic, :summary, :link, :opening_date
  
  @@all = []
  
  def initialize(title, critic, summary, link, opening_date)
    @title = title
    @critic = critic
    @summary = summary
    @link = link
    @opening_date = opening_date
    @@all << self 
  end 
  
  def self.all
    @@all
  end 
  
end