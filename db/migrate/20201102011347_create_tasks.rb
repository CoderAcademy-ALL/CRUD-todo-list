class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string :title
      t.string :description
      t.string :category
      t.integer :priority
      t.boolean :complete
      

      t.timestamps
    end
  end
end
