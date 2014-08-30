class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.string :title
      t.text :description
      t.string :created_by

      t.timestamps
    end
  end
end
