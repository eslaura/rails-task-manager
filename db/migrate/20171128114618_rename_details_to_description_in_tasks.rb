class RenameDetailsToDescriptionInTasks < ActiveRecord::Migration[5.0]
  def change
    rename_column :tasks, :detail, :description
  end
end
