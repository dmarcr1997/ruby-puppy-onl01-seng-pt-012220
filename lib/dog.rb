# Add your code here
class Dog
  @@all = []
  attr_accessor :name
  
  def initialize(name)
    @name = name
    save(self)
  end
  
  def self.all
    @@all
    self.save(self)
  end
  
  def self.print_all
    @@all.each do |dog|
      puts dog.name
    end
  end
  
  def self.save(Dog)
    @@all << self
  end
end