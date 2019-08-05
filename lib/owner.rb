
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
    @ownwer_dogs = Dog.all.select{ |dog| dog.owner == self}
      end
    end

    def save_dogs
      @@dogs << @owner_dogs
      @@dogs
    end

    def buy_dog(name)
    new_dog = Dog.new(name, self)
    @@dogs << new_dog

    @@dogs

    end

    def walk_dogs
      @@dog.each do |dog|
     dog.mood = "happy"
        end


end
