class ActiveRecord::Base
  def self.create_or_update(options = {})
    id = options.delete(:id)
    record = find_by(id: id) || new
    record.id = id
    record.attributes = options
    record.save!
    record
  end
end

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

city1 = City.create_or_update(id: 1, name: 'Los Angeles')
city2 = City.create_or_update(id: 2, name: 'Austin')

authors = [
  Author.create_or_update(id: 1, name: 'Janet', age: 44, city_id: city1.id),
  Author.create_or_update(id: 2, name: 'Jim', age: 36, city_id: city2.id),
  Author.create_or_update(id: 3, name: 'Julian', age: 49, city_id: city2.id)
]

current_id = 1
authors.each do |author|
  10.times do |i|
    Article.create_or_update(id: current_id, title: 'Article ' + current_id.to_s, author_id: author.id)
    current_id += 1
  end
end

current_id = 1
Article.all.each do |article|
  10.times do |i|
    Comment.create_or_update(id: current_id, body_text: 'first', like_count: Random.rand(10), article_id: article.id)
    current_id += 1
  end
end