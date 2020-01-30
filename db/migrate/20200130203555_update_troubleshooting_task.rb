class UpdateTroubleshootingTask < ActiveRecord::Migration[6.0]
  def change
    add_reference :troubleshooting_tasks, :ticket 
    add_column :troubleshooting_tasks, :description, :text
  end
end
