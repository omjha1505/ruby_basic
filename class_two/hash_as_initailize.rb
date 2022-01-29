class Candidate
  attr_accessor :name,:age,:occupation,:hobby,:birthplace
  def initialize(name,details)
    @name = name
    @age = details[:age]
    @occupation = details[:occupation]
    @hobby = details[:hobby]
    @birthplace = details[:birthplace]
  end
end

info = {age: 23, occupation: "Develper", hobby: "eating",birthplace: "Bihar"}
aalu = Candidate.new("Lalu",info)
p aalu.birthplace
