class Owner
  
  attr_reader :name, :species
  
  def initialize(name)
    @name = name 
    @species = "human"
  end 
  
  def name 
    @name.dup.freeze
  end 
  
  def species
    @species.dup.freeze
  end 
  
end