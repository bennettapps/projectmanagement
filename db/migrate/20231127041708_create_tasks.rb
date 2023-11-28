class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.string :name
      t.string :date
      t.boolean :complete
      t.boolean :overdue
      t.boolean :status

      t.timestamps
    end
  end
end
