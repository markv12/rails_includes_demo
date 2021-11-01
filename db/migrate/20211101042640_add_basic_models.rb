class AddBasicModels < ActiveRecord::Migration[6.1]
  def change
    create_table :cities do |t|
      t.string     :name
    end

    create_table :authors do |t|
      t.string     :name
      t.integer    :age
      t.belongs_to :city
    end

    create_table :articles do |t|
      t.string     :title
      t.text       :body_text
      t.belongs_to :author
    end

    create_table :comments do |t|
      t.text       :body_text
      t.integer    :like_count
      t.belongs_to :article
    end
  end
end
