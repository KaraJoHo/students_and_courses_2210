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

  def log_score(score)
    @scores << score
  end

  def grade
    (scores.sum / scores.count.to_f).round(1)
  end
end
