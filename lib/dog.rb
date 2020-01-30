# Add your code here
class Dog
  @@all = []
  attr_accessor :name
  
  def save
    @@all << self
  end
  
  def initialize(name)
    @name = name
    save
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def self.print_all
    @@all.each do |dog|
      puts dog.name
    end
  end
  
  
end