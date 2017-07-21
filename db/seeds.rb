20.times do |i|
  animal = Animal.create!(
    name: Faker::Cat.name,
    animal_type: ["cat","dog","bird"].sample,
    age: [1,2,3,4,5,12].sample,
    sex: ["male","female"].sample,
    weight: [5,22,32,42,52,120].sample,
    available: true
  )
  puts "Animal named #{animal.name} age #{animal.age}, is a #{animal.sex} #{animal.animal_type}."
end
