
require 'pry'

class Owner

  attr_reader :name, :species

  @@all = []

  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
    @@cats = []
    @@dogs = []
  end

  def name
    @name
      #binding.pry
  end

  def say_species
  return "I am a #{@species}."
  end

  def self.all
    @@all
  end

  def self.count
    @@all.count
  end

  def self.reset_all
    @@all.clear
  end

  def cats
    Cat.all.select { |cat| cat.owner == self}
  end

  def all_cats
    @@cats
    end

    def buy_cat(name)
      Cat.new(name, self)
    end

    def dogs
    Dog.all.select{ |dog| dog.owner == self}
    end

    def buy_dog(name)
     Dog.new(name, self)
    end

    def walk_dogs
    #  binding.pry
      self.dogs.each do |dog|
     dog.mood = "happy"
   end
 end

 def feed_cats
 #  binding.pry
   self.cats.each do |cat|
  cat.mood = "happy"
end
end

 def sell_pets
   self.dogs.each do |dog|
  dog.mood = "nervous"
  
  self.cats.each do |cat|
 cat.mood = "nervous"
          end
        end
      end
      


end
