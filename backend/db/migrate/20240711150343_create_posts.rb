class CreatePosts < ActiveRecord::Migration[7.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.column :status, "enum('not_publish', 'published')"
      t.timestamps
    end
  end
end
