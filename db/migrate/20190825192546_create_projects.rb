class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.string :name
      t.integer :position
      t.boolean :visible, default: false
      t.integer :user_id
      t.string :permalink
    

      t.timestamps
    end
      add_index('projects', 'user_id')
      add_index('projects', 'permalink')
  end
end
