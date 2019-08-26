class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.integer :project_id
      t.string :name, null: false
      t.text :description
      t.integer :position
      t.boolean :visible, default: false
    end
    add_index('tasks','project_id')
  end
end
