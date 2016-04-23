class CreatePostings < ActiveRecord::Migration
  def change
    create_table :postings do |t|
      t.text   :body, null: false
      t.integer :category, null: false

      t.timestamps null: false
    end
  end
end
