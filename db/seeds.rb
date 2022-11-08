require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

10.times do
  salary_1 = (Faker::Number.number(digits: 2)).ceil * 1000
  salary_2 = (Faker::Number.number(digits: 2)).ceil * 1000

  if salary_1 >= salary_2
    salary_min = salary_2
    salary_max = salary_1
  else
    salary_min = salary_1
    salary_max = salary_2
  end

  new_job_post = JobPost.new(title: Faker::Job.title, description: Faker::Lorem.paragraph_by_chars, category: rand(1..9), job_url: Faker::Internet.url, salary_min: salary_min, salary_max: salary_max, company:Faker::Company.name)
  new_job_post.save
end
