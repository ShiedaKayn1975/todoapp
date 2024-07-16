class CreateTasks < ActiveRecord::Migration[7.1]
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :sub_title
      t.datetime :due_date
      t.integer :priority
      t.integer :status

      t.timestamps
    end
  end
end
