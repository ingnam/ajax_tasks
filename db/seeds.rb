# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
100.times do
	title = "This is a title"
	content = "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt suscipit assumenda fugiat accusantium cumque amet error sint facilis voluptate esse, labore obcaecati minus sapiente ipsam delectus temporibus fugit quas, soluta!"
	Article.create!(title: title, content: content)
end