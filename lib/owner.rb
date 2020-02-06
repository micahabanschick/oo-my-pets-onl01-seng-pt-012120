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
  
  def buy_cat(name)
    Cat.new(name, self)
  end 
  
  def buy_dog(name)
    Dog.new(name, self)
  end 
  
  def walk_dogs 
    self.dogs.map{|dog| dog.mood = "happy"}
  end 
  
  def feed_cats
    self.cats.map{|cat| cat.mood = "happy"}
  end 
  
  def sell_pets
    Cat.all.map do |cat| 
      if cat.owner == self
        cat.mood = "nervous"
        cat.owner = nil
      end 
    end
    Dog.all.map do |dog| 
      if dog.owner == self 
        dog.mood = "nervous" 
        dog.owner = nil 
      end 
    end
  end 
  
  def list_pets
    "I have #{self.dogs.length} dog(s), and #{self.cats.length} cat(s)."
  end 
  
end