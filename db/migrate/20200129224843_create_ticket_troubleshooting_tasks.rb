class CreateTicketTroubleshootingTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :ticket_troubleshooting_tasks do |t|
      t.references :ticket, null: false, foreign_key: true
      t.references :troubleshooting_task, null: false, foreign_key: true
      t.string :status
      t.text :notes

      t.timestamps
    end
  end
end
