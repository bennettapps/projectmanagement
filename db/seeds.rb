# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.create(email: 'admin@projects.local', password: 'Pass1234')

Project.create(name: 'Project 1', description: "Random Text")
Project.create(name: 'Project 2', description: "Random Text")
Project.create(name: 'Project 3', description: "Random Text")

3.times do |i|
    project = Project.find_by(name: "Project #{i+1}")
    5.times do |j|
      year = Date.today.year + rand(0..1)
      month = rand(1..12)
      last_day = Date.new(year, month, -1).day
  
      Task.create(
        project: project,
        name: "Task #{j+1}",
        year: year,
        month: month,
        day: rand(1..last_day),
        complete: [true, false].sample
      )
    end
  end