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

author1 = Author.create_or_update(id: 1, name: 'Janet', age: 44, city_id: city1.id)
author2 = Author.create_or_update(id: 2, name: 'Jim', age: 36, city_id: city2.id)

articles = [
  Article.create_or_update(id: 1, title: 'Article 1', author_id: author1.id),
  Article.create_or_update(id: 2, title: 'Article 2', author_id: author1.id),
  Article.create_or_update(id: 3, title: 'Article 3', author_id: author1.id),
  Article.create_or_update(id: 4, title: 'Article 4', author_id: author1.id),
  Article.create_or_update(id: 5, title: 'Article 5', author_id: author1.id),
  Article.create_or_update(id: 6, title: 'Article 6', author_id: author2.id),
  Article.create_or_update(id: 7, title: 'Article 7', author_id: author2.id),
  Article.create_or_update(id: 8, title: 'Article 8', author_id: author2.id),
  Article.create_or_update(id: 9, title: 'Article 9', author_id: author2.id),
  Article.create_or_update(id: 10, title: 'Article 10', author_id: author2.id)
]

current_id = 1
articles.each do |article|
  10.times do |i|
    Comment.create_or_update(id: current_id, body_text: 'first', like_count: Random.rand(10), article_id: article.id)
    current_id += 1
  end
end