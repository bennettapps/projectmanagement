class RemoveStatusFromTasks < ActiveRecord::Migration[7.0]
  def change
    remove_column :tasks, :status, :boolean
  end
end
