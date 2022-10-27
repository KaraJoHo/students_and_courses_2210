class Student
  attr_reader :hash, :name, :age, :scores
  def initialize(hash = Hash.new(name, age))
    #require 'pry' ;binding.pry
    @hash = {
      @name => name,
      @age => age
    }
    @name = hash[:name]
    @age = hash[:age]
    @scores = []
  end


end
