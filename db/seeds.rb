puts "destroying all"
Student.destroy_all
Duck.destroy_all

puts "creating seeds"

10.times do
  Student.create(name: Faker::Name.name, mod: rand(1..5))
end

5.times do
  Duck.create(name: "BEEF", description: "BeefBeefBeef", student_id: rand(Student.first.id..Student.last.id))
end
