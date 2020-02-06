class Owner
  
  attr_reader :name, :species
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @species = "human"
    self.save
  end 
  
  def save
    @@all << self 
  end
  
  def name 
    @name.dup.freeze
  end 
  
  def species
    @species.dup.freeze
  end 
  
  def say_species
    @species.dup.freeze 
  end 
  
  def self.all 
    @@all.dup.freeze
  end 
  
  def self.count
    @@all.length 
  end 
  
  def self.reset_all 
    @@all = []
  end 
  
end