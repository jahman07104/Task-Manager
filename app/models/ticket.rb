class Ticket < ApplicationRecord
  belongs_to :user
  has_many :ticket_troubleshooting_tasks
  has_many :troubleshooting_tasks, through: :ticket_troubleshooting_tasks
end
