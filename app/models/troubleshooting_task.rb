class TroubleshootingTask < ApplicationRecord
  has_many :ticket_troubleshooting_tasks
  has_many :tickets, through: :ticket_troubleshooting_tasks
end
