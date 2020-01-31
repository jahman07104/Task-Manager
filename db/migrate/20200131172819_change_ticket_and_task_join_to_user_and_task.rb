class ChangeTicketAndTaskJoinToUserAndTask < ActiveRecord::Migration[6.0]
  def change
    rename_table :ticket_troubleshooting_tasks, :user_troubleshooting_tasks
    remove_reference :user_troubleshooting_tasks, :ticket
    add_reference :user_troubleshooting_tasks, :user
  end
end
