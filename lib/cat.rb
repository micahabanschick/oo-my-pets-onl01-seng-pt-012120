class Cat
  
  attr_accessor :owner, :mood
  
  @@all = []
  
  def initialize(name, owner)
    @name = name 
    @owner = owner
    @mood = "nervous"
    self.save
  end 
  
  def save 
    @@all << self 
  end 
  
  def owner=(owner) 
    @owner = Owner.all.find{|own| own == owner}
  end
  
  def name 
    @name.dup.freeze
  end 
  
  def self.all 
    @@all.dup.freeze
  end 
  
end