class RemoveOverdueFromTasks < ActiveRecord::Migration[7.0]
  def change
    remove_column :tasks, :overdue, :boolean
  end
end
