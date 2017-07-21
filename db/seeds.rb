
class Seed

  def self.begin
    seed = Seed.new
    seed.generate_animals
  end

  def generate_animals
    20.times do |i|
      animal = Animal.create!(
        name: Faker::Cat.name,
        animal_type: ["cat","dog","bird"].sample,
        age: [1,2,3,4,5,12].sample,
        sex: ["male","female"].sample,
        weight: [5,22,32,42,52,120].sample,
        available: true,
        adoption_fee: [75,100,300].sample
      )
      puts "Animal named #{animal.name} age #{animal.age}, is a #{animal.sex} #{animal.animal_type}."
    end
  end
end

Seed.begin
