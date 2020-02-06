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
    "I am a #{self.species}." 
  end 
  
  def self.all 
    @@all
  end 
  
  def self.count
    @@all.length 
  end 
  
  def self.reset_all 
    @@all = []
  end 
  
  #Associations
  
  def cats 
    Cat.all.filter{|cat| cat.owner == self}
  end 
  
  def dogs 
    Dog.all.filter{|dog| dog.owner == self}
  end 
  
  def buy_cat
  end 
  
  def buy_dog
  end 
  
  def walk_dogs 
  end 
  
  def feed_cats
  end 
  
  def sell_pets
  end 
  
  def list_pets
  end 
  
end