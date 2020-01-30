class TroubleshootingTask < ApplicationRecord
  belongs_to :ticket
  has_many :ticket_troubleshooting_tasks
  #has_many :users, through: :ticket_troubleshooting_tasks
end
